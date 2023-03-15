

import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class PostModel {
  @HiveField(0)
  String userImage;
  @HiveField(1)
  String userName;
  @HiveField(2)
  String postImage;
  @HiveField(3)
  String caption;
  @HiveField(3)
  String time;
  @HiveField(3)
  String isLiked;
  @HiveField(3)
  String isLiked2;

  PostModel({
    required this.userName,
    required this.userImage,
    required this.postImage,
    required this.caption,
    required this.time,
    required this.isLiked,
    required this.isLiked2
  });

}

