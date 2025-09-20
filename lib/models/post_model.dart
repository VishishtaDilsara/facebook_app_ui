class PostModel {
  String profilePicture;
  String name;
  String time;
  int? reacts;
  String postImage;
  String? caption;
  int? commentCount;

  PostModel({
    required this.name,
    required this.profilePicture,
    required this.postImage,
    this.caption,
    this.commentCount,
    this.reacts,
    required this.time,
  });
}
