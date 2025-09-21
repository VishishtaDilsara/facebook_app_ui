import 'package:flutter/material.dart';

class HomeOptionBar extends StatelessWidget {
  const HomeOptionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.video_call_rounded, color: Colors.red, size: 35),
              Text(
                'Live',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.image, color: Colors.green, size: 35),
              Text(
                'Photo',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.amber,
                size: 35,
              ),
              Text(
                'Feeling/Activity',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}