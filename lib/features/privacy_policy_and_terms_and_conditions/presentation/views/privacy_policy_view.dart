import 'package:awfar_offer_app/features/settings/presentation/views/widgets/settings_view_body.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyView extends StatelessWidget {
  static const String routeName = "privacy_policy";

  const PrivacyPolicyView({super.key});
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
              title: "سياسة الخصوصية",
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'مقدمة',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'نشكرك على استخدام تطبيقنا. نحن ملتزمون بحماية خصوصيتك وضمان أمان معلوماتك الشخصية.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'المعلومات التي نجمعها',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'قد نقوم بجمع البيانات التالية:\n- الاسم والبريد الإلكتروني.\n- بيانات الاستخدام لتحسين التجربة.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'كيفية استخدام المعلومات',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'نستخدم البيانات لتحسين خدماتنا وتقديم تجربة مخصصة للمستخدم.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'مشاركة البيانات',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'لن نشارك بياناتك مع أطراف خارجية إلا بعد الحصول على موافقتك.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'حقوق المستخدم',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'لديك الحق في تعديل بياناتك أو طلب حذفها في أي وقت.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'التحديثات',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'قد نقوم بتحديث سياسة الخصوصية من وقت لآخر. سيتم إعلامك بأي تغييرات هامة.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'اتصل بنا',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'إذا كانت لديك أي استفسارات حول سياسة الخصوصية، يمكنك التواصل معنا عبر البريد الإلكتروني: support@example.com',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
