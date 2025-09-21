import 'package:facebook_ui/screens/homepage/widgets/custom_app_bar.dart';
import 'package:facebook_ui/screens/homepage/widgets/custom_tab_bar.dart';
import 'package:facebook_ui/screens/homepage/widgets/home_option_bar.dart';
import 'package:facebook_ui/screens/homepage/widgets/post_list_view.dart';
import 'package:facebook_ui/screens/homepage/widgets/post_publish_space.dart';
import 'package:facebook_ui/screens/homepage/widgets/story_list_view.dart';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
              SizedBox(height: 20),
              CustomTabBar(),
              Divider(color: Colors.grey.shade400),
              SizedBox(height: 8),
              PostPublishSpace(),
              SizedBox(height: 8),
              Divider(color: Colors.grey.shade400),
              SizedBox(height: 8),
              HomeOptionBar(),
              SizedBox(height: 8),
              Divider(thickness: 8, color: Colors.grey.shade400),
              SizedBox(height: 10),
              StoryListView(),
              SizedBox(height: 10),
              Divider(thickness: 8, color: Colors.grey.shade400),
              PostListView(),
            ],
          ),
        ),
      ),
    );
  }
}
