import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            'facebook',
            style: TextStyle(
              color: Colors.blue.shade600,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.grey.shade200),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.grey.shade200),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.messenger),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.grey.shade200),
            ),
          ),
        ],
      ),
    );
  }
}