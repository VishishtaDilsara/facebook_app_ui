import 'package:facebook_ui/models/post_model.dart';
import 'package:facebook_ui/models/story_model.dart';

class DemoData {
  static List<StoryModel> stories = [
    StoryModel(profilePicture: '', story: ''),
    StoryModel(
      profilePicture:
          'https://cdn2.iconfinder.com/data/icons/office-and-business-special-set-1/260/19-512.png',
      story:
          'https://tse3.mm.bing.net/th/id/OIP.NhlSLYTIkVMCFTkhDA-3YwHaJQ?pid=ImgDet&w=184&h=230&c=7&dpr=1.3&o=7&rm=3',
    ),
    StoryModel(
      profilePicture:
          'https://tse4.mm.bing.net/th/id/OIP.HZeuFp_QM8XRO2SiwTSSeAHaHa?rs=1&pid=ImgDetMain&o=7&rm=3',
      story:
          'https://tse4.mm.bing.net/th/id/OIP.xtWPBa09iM2m9w5oEVxifQHaJQ?rs=1&pid=ImgDetMain&o=7&rm=3',
    ),
    StoryModel(
      profilePicture:
          'https://tse4.mm.bing.net/th/id/OIP.lPhtMN0Tw9_YWQapHCJDigHaHa?rs=1&pid=ImgDetMain&o=7&rm=3',
      story:
          'https://tse2.mm.bing.net/th/id/OIP.Qt4liYkL4Usjv6HRBigv9wHaLv?pid=ImgDet&w=184&h=291&c=7&dpr=1.3&o=7&rm=3',
    ),
  ];

  static String demoProfilePicture =
      'https://th.bing.com/th/id/OIP.IGNf7GuQaCqz_RPq5wCkPgHaLH?o=7rm=3&rs=1&pid=ImgDetMain&o=7&rm=3';

  static List<PostModel> postList = [
    PostModel(
      name: 'Kasun Chamara',
      profilePicture:
          'https://cdn2.iconfinder.com/data/icons/office-and-business-special-set-1/260/19-512.png',
      postImage:
          'https://tse2.mm.bing.net/th/id/OIP.EbiaAlqWdGYcxttQ-ys5iwHaDt?rs=1&pid=ImgDetMain&o=7&rm=3',
      time: '18 min ago',
      reacts: 234,
      commentCount: 53,
    ),
    PostModel(
      name: 'Sandun Mendis',
      profilePicture:
          'https://tse4.mm.bing.net/th/id/OIP.HZeuFp_QM8XRO2SiwTSSeAHaHa?rs=1&pid=ImgDetMain&o=7&rm=3',
      postImage: 'https://i.ytimg.com/vi/c4rs5FTNHaw/maxresdefault.jpg',
      time: '30 min ago',
      caption: 'Thi is Marvel Rival',
      reacts: 41,
      commentCount: 20,
    ),
  ];
}
