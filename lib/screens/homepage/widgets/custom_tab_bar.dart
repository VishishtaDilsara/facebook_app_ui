import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.home_rounded, size: 40, color: Colors.blue.shade600),
          Icon(Icons.people_outline, size: 40, color: Colors.grey.shade700),
          Icon(
            Icons.ondemand_video_rounded,
            size: 40,
            color: Colors.grey.shade700,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            size: 40,
            color: Colors.grey.shade700,
          ),
          Icon(
            Icons.notifications_none_rounded,
            size: 40,
            color: Colors.grey.shade700,
          ),
          Icon(Icons.menu, size: 40, color: Colors.grey.shade700),
        ],
      ),
    );
  }
}