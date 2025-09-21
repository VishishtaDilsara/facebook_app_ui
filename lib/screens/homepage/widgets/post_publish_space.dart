import 'package:facebook_ui/data/demo_data.dart';
import 'package:flutter/material.dart';

class PostPublishSpace extends StatelessWidget {
  const PostPublishSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 25,
            backgroundImage: NetworkImage(DemoData.demoProfilePicture),
          ),
          SizedBox(width: 15),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hint: Text('Whats on your mind?'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}