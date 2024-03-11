import 'package:talk_talk/models/Followers.dart';
import 'package:talk_talk/models/Following.dart';
import 'package:talk_talk/models/Friends.dart';
import 'package:talk_talk/models/Visitors.dart';

class User {
  final String name;
  final String userName;
  final String id;
  final String? image;
  final List<Visitors>? visitors;
  final List<Following>? following;
  final List<Followers>? followers;
  final List<Friends>? friends;

  User(
      {required this.name,
      required this.userName,
      required this.id,
      this.image,
      this.visitors,
      this.following,
      this.followers,
      this.friends});
}
