import 'package:facebook_ui/models/story_model.dart';
import 'package:flutter/material.dart';

class StoryViewScreen extends StatefulWidget {
  final StoryModel story;
  const StoryViewScreen({super.key, required this.story});

  @override
  State<StoryViewScreen> createState() => _StoryViewScreenState();
}

class _StoryViewScreenState extends State<StoryViewScreen> {
  @override
  Widget build(BuildContext context) {
    final sizeDevice = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SafeArea(child: BackButton(color: Colors.white)),
          Align(
            alignment: Alignment.center,
            child: Image(
              image: NetworkImage(widget.story.story),
              width: sizeDevice.width,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: sizeDevice.width,
            height: sizeDevice.height,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    //left
                    color: Colors.transparent,
                    width: sizeDevice.width / 2,
                    height: sizeDevice.height,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('Right Side Tapped');
                  },
                  child: Container(
                    //right
                    color: Colors.transparent,
                    width: sizeDevice.width / 2,
                    height: sizeDevice.height,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade900,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
