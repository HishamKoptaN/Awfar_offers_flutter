import 'package:flutter/material.dart';

class TextAndShareAndNotificationIcon extends StatelessWidget {
  const TextAndShareAndNotificationIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 4, left: 16),
      child: Row(
        children: [
          Column(
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
          Spacer(),
          Column(
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
          SizedBox(
            width: 16,
          ),
          Column(
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
}
