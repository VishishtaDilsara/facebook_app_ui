import 'package:facebook_ui/data/demo_data.dart';
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
        child: Column(
          children: [
            Padding(
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
                      backgroundColor: WidgetStatePropertyAll(
                        Colors.grey.shade200,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Colors.grey.shade200,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.messenger),
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Colors.grey.shade200,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.home_rounded,
                    size: 40,
                    color: Colors.blue.shade600,
                  ),
                  Icon(
                    Icons.people_outline,
                    size: 40,
                    color: Colors.grey.shade700,
                  ),
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
            ),
            Divider(color: Colors.grey.shade400),
            SizedBox(height: 8),
            Padding(
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
            ),
            SizedBox(height: 8),
            Divider(color: Colors.grey.shade400),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.video_call_rounded,
                        color: Colors.red,
                        size: 35,
                      ),
                      Text(
                        'Live',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.image, color: Colors.green, size: 35),
                      Text(
                        'Photo',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
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
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Divider(thickness: 8, color: Colors.grey.shade400),
            SizedBox(height: 8),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                height: 258,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: DemoData.stories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: index != 0
                          ? Container(
                              padding: EdgeInsets.only(left: 8, top: 5),
                              width: 150,
                              height: 250,

                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    DemoData.stories[index].story,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 27,
                                    backgroundColor: Colors.blue,
                                    child: CircleAvatar(
                                      radius: 24,
                                      backgroundImage: NetworkImage(
                                        DemoData.stories[index].profilePicture,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Container(
                              width: 150,
                              height: 250,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  SizedBox(
                                    width: 150,
                                    height: 200,
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 150,
                                          height: 175,
                                          decoration: BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                DemoData.demoProfilePicture,
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: CircleAvatar(
                                            radius: 25,
                                            backgroundColor: Colors.blue,
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Create Story',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
