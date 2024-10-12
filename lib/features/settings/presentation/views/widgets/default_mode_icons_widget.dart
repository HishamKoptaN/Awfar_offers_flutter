import 'package:flutter/material.dart';

class DefaultModeIconsWidget extends StatelessWidget {
  const DefaultModeIconsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        SizedBox(
          width: 40,
          height: 40,
        ),
        Positioned(
          left: 0,
          top: 8,
          child: Icon(
            Icons.dark_mode_rounded,
            color: Colors.white, // Adjust color based on mode
            size: 15,
          ),
        ),
        Positioned(
          top: 7,
          left: 13,
          child: Text(
            "/",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        Positioned(
          right: 5,
          top: 16,
          child: Icon(
            Icons.light_mode_rounded,
            color: Colors.white, // Adjust color based on mode
            size: 15,
          ),
        ),
      ],
    );
  }
}
