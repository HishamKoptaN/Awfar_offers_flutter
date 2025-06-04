import 'package:awfar_offer_app/all_imports.dart';
import 'package:awfar_offer_app/core/app_layout.dart';
import 'package:awfar_offer_app/core/utils/app_colors.dart';
import 'package:awfar_offer_app/core/widgets/custom_button.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/custom_circular_progress.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../core/widgets/custom_text_form_password_field.dart';
import '../../../../../core/widgets/toast_notifier.dart';
import '../../../../../home_view.dart';
import '../../../sign_up/present/view/sign_up_view.dart';
import '../../data/models/login_req_body_model.dart';
import '../../data/models/reset_pass_req_body_model.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_event.dart';
import '../bloc/login_state.dart';
import 'verify_phone_pumber_view.dart';

class LoginView extends StatefulWidget {
  LoginView({
    super.key,
    this.showAppBar = false,
  });
  bool showAppBar;
  static const String routeName = 'LoginView';
  @override
  State<LoginView> createState() => _LoginViewState();
}

LoginReqBodyModel loginReqBodyModel = const LoginReqBodyModel();

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _emailFormKey = GlobalKey<FormState>();
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final AppLocalizations t = AppLocalizations.of(context)!;
    return AppLayout(
      showAppBar: widget.showAppBar,
      body: BlocProvider(
        create: (context) => LoginBloc(
          loginUseCase: getIt(),
          loginAnonymouslyUseCase: getIt(),
          loginWithGoogleUseCase: getIt(),
          loginWithFacebookUseCase: getIt(),
          loginWithPhoneUseCase: getIt(),
          firebaseAuth: getIt(),
        ),
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            state.mapOrNull(
              success: (data) {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const HomeView(),
                  ),
                  (route) => false,
                );
              },
              linkSent: (data) {
                ToastNotifier().showSuccess(
                  context: context,
                  message: t.passw_reset_link_has_been_sent,
                );
              },
              failure: (error) {
                ToastNotifier().showError(
                  context: context,
                  message: t.error,
                );
              },
            );
          },
          builder: (context, state) {
            return Center(
              child: Column(
                children: [
                  Gap(
                    16.h,
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
                          33.h,
                        ),
                        Form(
                          key: _emailFormKey,
                          child: CustomTextFormField(
                            onChanged: (v) {
                              loginReqBodyModel = loginReqBodyModel.copyWith(
                                email: v,
                              );
                              _formKey.currentState!.validate();
                            },
                            validator: (
                              value,
                            ) {
                              if (value == null || value.isEmpty) {
                                return t.required;
                              } else if (!RegExp(
                                r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                              ).hasMatch(
                                value,
                              )) {
                                return t.invalid_email;
                              }
                              return null;
                            },
                            hintText: "البريد الإلكتروني",
                            suffixIcon: const Icon(
                              Icons.email_outlined,
                            ),
                          ),
                        ),
                        Gap(
                          16.h,
                        ),
                        CustomTextFormPasswordField(
                          onChanged: (v) {
                            loginReqBodyModel = loginReqBodyModel.copyWith(
                              password: v,
                            );
                            _formKey.currentState!.validate();
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return t.required;
                            } else if (value.length < 8) {
                              return t.password_too_short;
                            }
                            return null;
                          },
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              if (_emailFormKey.currentState!.validate()) {
                                ResetPassReqBodyModel resetPassReqBodyModel =
                                    const ResetPassReqBodyModel();
                                resetPassReqBodyModel =
                                    resetPassReqBodyModel.copyWith(
                                  email: loginReqBodyModel.email,
                                );
                                context.read<LoginBloc>().add(
                                      LoginEvent.resetPass(
                                        resetPassReqBodyModel:
                                            resetPassReqBodyModel,
                                      ),
                                    );
                              } else {
                                ToastNotifier().showError(
                                  context: context,
                                  message: t.enter_your_email,
                                );
                              }
                            },
                            child: CustomText(
                              text: "نسيت كلمة المرور؟",
                              fontWeight: FontWeight.bold,
                              fontSize: 12.5.sp,
                            ),
                          ),
                        ),
                        Gap(
                          16.h,
                        ),
                        CustomTextButtonWidget(
                          widget: state.maybeWhen(
                            loading: () {
                              return const CustomCircularProgress();
                            },
                            orElse: () {
                              return CustomText(
                                text: "تسجيل الدخول",
                                color: Colors.white,
                                fontFamily: "Arial",
                                fontSize: 22.5.sp,
                                textAlign: TextAlign.center,
                              );
                            },
                          ),
                          onPressed: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              context.read<LoginBloc>().add(
                                    LoginEvent.login(
                                      loginReqBodyModel: loginReqBodyModel,
                                    ),
                                  );
                            }
                          },
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
                                text: "تسجيل الدخول برقم الموبيل",
                                color: Colors.white,
                                fontFamily: "Arial",
                                fontSize: 22.5.sp,
                                textAlign: TextAlign.center,
                              );
                            },
                          ),
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const VerifyPhoneNumberView(),
                              ),
                              (route) => false,
                            );
                          },
                        ),
                        Gap(
                          16.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                state.maybeWhen(
                                  loading: () {},
                                  orElse: () {
                                    context.read<LoginBloc>().add(
                                          const LoginEvent.google(),
                                        );
                                  },
                                );
                              },
                              child: Container(
                                height: 40.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                    4.0,
                                  ),
                                  child: Image.asset(
                                    'assets/images/google_logo.png',
                                  ),
                                ),
                              ),
                            ),
                            Gap(
                              20.w,
                            ),
                          ],
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
                                horizontal: 10,
                              ),
                              child: CustomText(
                                text: t.or,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
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
                          16.h,
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
                                    color: AppColors.lightPrimaryColor,
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
            );
          },
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(
        color: Color(0xffE6E9E9),
        width: 1,
      ),
    );
  }
}
 // GestureDetector(
                            //   onTap: () async {
                            //     state.maybeWhen(
                            //       loading: () {},
                            //       orElse: () {
                            // context.read<LoginBloc>().add(
                            //       const LoginEvent.facebook(),
                            //     );
                            //       },
                            //     );
                            //   },
                            //   child: Container(
                            //     height: 40.h,
                            //     width: 40.w,
                            //     decoration: BoxDecoration(
                            //       borderRadius: BorderRadius.circular(10),
                            //       border: Border.all(color: Colors.grey),
                            //     ),
                            //     child: Padding(
                            //       padding: const EdgeInsets.all(4.0),
                            //       child: Image.asset(
                            //         'assets/images/facebook_icon.png',
                            //       ),
                            //     ),
                            //   ),
                            // ),