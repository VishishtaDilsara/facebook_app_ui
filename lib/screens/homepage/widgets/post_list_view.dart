import 'package:facebook_ui/data/demo_data.dart';
import 'package:flutter/material.dart';

class PostListView extends StatelessWidget {
  const PostListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: DemoData.postList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 33,
                    backgroundColor: Colors.blue.shade700,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                          DemoData.postList[index].profilePicture,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        DemoData.postList[index].name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            DemoData.postList[index].time,
                            style: TextStyle(color: Colors.grey.shade800),
                          ),
                          SizedBox(width: 4),
                          Icon(
                            Icons.public,
                            color: Colors.grey.shade700,
                            size: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_horiz_rounded),
                  SizedBox(width: 20),
                  Icon(Icons.close),
                ],
              ),
            ),
            DemoData.postList[index].caption != null
                ? Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8, left: 8),
                      child: Text(
                        DemoData.postList[index].caption!,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  )
                : SizedBox(),
            Image.network(
              DemoData.postList[index].postImage,
              fit: BoxFit.cover,
              width: MediaQuery.sizeOf(context).width,
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 10,
                    child: Icon(Icons.thumb_up, size: 14, color: Colors.white),
                  ),
                  SizedBox(width: 1),
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 10,
                    child: Icon(Icons.favorite, size: 14, color: Colors.white),
                  ),
                  SizedBox(width: 2),
                  Text(DemoData.postList[index].reacts.toString()),
                  Spacer(),
                  Text(
                    '${DemoData.postList[index].commentCount.toString()} Comments',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.thumb_up, color: Colors.grey.shade600),
                      SizedBox(width: 4),
                      Text('Like', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.comment, color: Colors.grey.shade600),
                      SizedBox(width: 4),
                      Text('Comment', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.ios_share, color: Colors.grey.shade600),
                      SizedBox(width: 4),
                      Text('Share', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
          ],
        );
      },
    );
  }
}