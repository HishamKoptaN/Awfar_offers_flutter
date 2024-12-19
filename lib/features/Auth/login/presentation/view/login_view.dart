import 'package:awfar_offer_app/core/app_layout.dart';
import 'package:awfar_offer_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/custom_circular_progress.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../../../../core/widgets/toast_notifier.dart';
import '../../../forgot_password/forget_password.dart';
import '../../../sign_up/presentation/view/sign_up_view.dart';
import '../../data/models/login_request_body.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_event.dart';
import '../bloc/login_state.dart';

class LoginView extends StatefulWidget {
  LoginView({
    super.key,
    required this.showAppBar,
  });
  bool showAppBar;
  static const String routeName = 'LoginView';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool showPassword = true;

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    validator(String? value) {
      if (value == null) {
        return "مطلوب";
      }
      if (value.isEmpty) {
        return "مطلوب";
      }
      return null;
    }

    return AppLayout(
      showAppBar: widget.showAppBar,
      body: BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(
          getIt(),
        ),
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            state.mapOrNull(
              success: (data) {
                // Navigator.of(context).pushAndRemoveUntil(
                //   MaterialPageRoute(
                //     builder: (context) => const NavigateBarView(),
                //   ),
                //   (route) => false,
                // );
              },
              error: (error) {
                ToastNotifier().showError(
                  context: context,
                  message: "t.error",
                );
              },
            );
          },
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Colors.white,
              body: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Gap(
                        40.h,
                      ),
                      ClipOval(
                        child: Image.asset(
                          'assets/icons/launcher_icon.jpg',
                          height: 125.h,
                          width: 125.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Gap(
                              40.h,
                            ),
                            Container(
                              width: width / 1.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.grey[200],
                              ),
                              child: TextFormField(
                                controller: _email,
                                validator: validator,
                                decoration: const InputDecoration(
                                  labelText: "الايميل",
                                  suffixIcon: Icon(
                                    Icons.email,
                                  ),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 20,
                                  ),
                                ),
                              ),
                            ),
                            Gap(
                              20.h,
                            ),
                            Container(
                              width: width / 1.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.grey[200],
                              ),
                              child: TextFormField(
                                controller: _password,
                                validator: validator,
                                obscureText: showPassword,
                                decoration: InputDecoration(
                                  labelText: 'كلمة المرور',
                                  suffixIcon: InkWell(
                                    onTap: () {
                                      setState(
                                        () {
                                          showPassword = !showPassword;
                                        },
                                      );
                                    },
                                    child: Icon(
                                      showPassword
                                          ? FontAwesomeIcons.eye
                                          : FontAwesomeIcons.eyeSlash,
                                    ),
                                  ),
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 20,
                                  ),
                                ),
                              ),
                            ),
                            Gap(
                              10.h,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ForgetPasswordScreen(),
                                    ),
                                  );
                                },
                                child: const Text("نسيت كلمة المرور"),
                              ),
                            ),
                            Gap(
                              20.h,
                            ),
                            CustomTextButtonWidget(
                              widget: state.maybeWhen(
                                loading: () {
                                  return const CustomCircularProgress();
                                },
                                orElse: () {
                                  return CustomText(
                                    text: "تسجيل الدخول",
                                    color: Colors.black,
                                    fontFamily: "Arial",
                                    fontSize: 25.sp,
                                  );
                                },
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  context.read<LoginBloc>().add(
                                        LoginEvent.login(
                                          loginRequestBody: LoginRequestBody(
                                            email: _email.text,
                                            password: _password.text,
                                          ),
                                        ),
                                      );
                                }
                              },
                            ),
                            Gap(
                              40.h,
                            ),
                            Row(
                              children: <Widget>[
                                const Expanded(
                                  child: Divider(
                                    thickness: 2,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    "أو",
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  child: Divider(
                                    thickness: 2,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Gap(
                              40.h,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const SignUpView(),
                                  ),
                                );
                              },
                              child: Text.rich(
                                TextSpan(
                                  text: " ليس لديك حساب ؟",
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "أنشئ",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Colors.blue,
                                        decorationThickness: 2.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
