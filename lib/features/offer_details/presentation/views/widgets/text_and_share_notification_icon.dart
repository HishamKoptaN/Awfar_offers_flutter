import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class TextAndShareAndNotificationIcon extends StatelessWidget {
  const TextAndShareAndNotificationIcon({
    super.key,
    required this.image,
    required this.title,
    required this.offerLink,
  });

  final String image, title, offerLink;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4, left: 16),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "عروض خاصة",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "ينتهي في 20 أكتوبر 2024",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              shareContent();
            },
            child: const Column(
              children: [
                Icon(
                  Icons.screen_share_outlined,
                  color: Colors.white,
                ),
                Text(
                  "شارك",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          const Column(
            children: [
              Icon(
                Icons.notifications_none_outlined,
                color: Colors.white,
              ),
              Text(
                "تذكير",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<void> shareContent() async {
    Dio dio = Dio();
    Response response = await dio.get(
      image,
      options: Options(
        responseType: ResponseType.bytes,
      ), // لتحميل الصورة كـ bytes
    );

    // حفظ الصورة في الذاكرة
    final directory = await getTemporaryDirectory();
    final file = File('${directory.path}/image.jpg');
    await file.writeAsBytes(response.data);

    // مشاركة الصورة مع النص والرابط
    Share.shareXFiles(
      [XFile(file.path)],
      text:
          '$title\n\n$offerLink\n\nApp Link:\nhttps://play.google.com/store/apps/details?id=com.awfaroffers.app',
    );
  }
}
