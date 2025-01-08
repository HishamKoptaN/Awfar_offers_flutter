import 'package:awfar_offer_app/features/settings/presentation/views/widgets/settings_view_body.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  static const String routeName = "terms_and_conditions";

  const TermsAndConditions({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              isBack: true,
              title: "الشروط والأحكام",
            ),
            Text(
              'مقدمة',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'باستخدامك هذا التطبيق، فإنك توافق على الالتزام بهذه الشروط والأحكام. إذا كنت لا توافق، يُرجى عدم استخدام التطبيق.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'استخدام التطبيق',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'التطبيق مخصص للاستخدام الشخصي فقط. يُحظر استخدامه لأي غرض غير قانوني أو غير مصرح به.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'حقوق الملكية الفكرية',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'جميع حقوق المحتوى والتصميم محفوظة. يُمنع نسخ أو تعديل أي جزء من التطبيق بدون إذن مسبق.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'المسؤولية',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'لا يتحمل التطبيق أو مطوروه أي مسؤولية عن أي أضرار ناتجة عن استخدام التطبيق.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'التعديلات',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'نحتفظ بالحق في تعديل الشروط والأحكام في أي وقت. سيتم إخطار المستخدمين بالتعديلات عبر التطبيق.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'القانون المطبق',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'تُطبق هذه الشروط وفقًا لقوانين الدولة التي يُدار منها التطبيق.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'اتصل بنا',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'لأي استفسارات، يمكنك التواصل معنا عبر البريد الإلكتروني: support@example.com',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
