import 'package:facebook_ui/data/demo_data.dart';
import 'package:facebook_ui/screens/story_view_screen.dart';
import 'package:flutter/material.dart';

class StoryListView extends StatelessWidget {
  const StoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  ? InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                StoryViewScreen(story: DemoData.stories[index]),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 8, top: 5),
                        width: 150,
                        height: 250,

                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(DemoData.stories[index].story),
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
                      ),
                    )
                  : Container(
                      width: 150,
                      height: 250,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
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
                                    child: Icon(Icons.add, color: Colors.white),
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
    );
  }
}