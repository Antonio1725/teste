import 'package:talk_talk/models/Followers.dart';
import 'package:talk_talk/models/Following.dart';
import 'package:talk_talk/models/Friends.dart';
import 'package:talk_talk/models/Simple.dart';
import 'package:talk_talk/models/User.dart';
import 'package:talk_talk/models/Visitors.dart';

class SimpleUser {
  static User user = User(
    name: "Antonio Diogo",
    userName: "Tony Stark",
    id: "1234567788",
    image: "assets/images/img2.jpg",
    visitors: [
      Visitors(
          id: 1,
          name: "Capeculo Eduardo",
          userName: "capeculo",
          code: "12-23",
          image: "assets/images/img1.jpg",
          state: true),
      Visitors(
          id: 1,
          name: "Vadilson Kionda",
          userName: "vadilson",
          code: "14-23",
          image: "assets/images/img1.jpg",
          state: false),
      Visitors(
          id: 1,
          name: "Pedro Bianda",
          userName: "pedro Bianda",
          code: "12-24",
          state: true),
      Visitors(
          id: 1,
          name: "Rita Pedro",
          userName: "rita",
          code: "12-28",
          state: true),
      Visitors(
          id: 1,
          name: "Teresa Miguel",
          userName: "Teresa",
          code: "12-23",
          state: true),
    ],
    following: [
      Following(
          id: 1,
          name: "Capeculo Eduardo",
          userName: "capeculo",
          code: "12-23",
          image: "assets/images/img1.jpg",
          state: true),
      Following(
          id: 1,
          name: "Vadilson Kionda",
          userName: "vadilson",
          code: "14-23",
          image: "assets/images/img1.jpg",
          state: false),
      Following(
          id: 1,
          name: "Pedro Bianda",
          userName: "pedro Bianda",
          code: "12-24",
          state: true),
      Following(
          id: 1,
          name: "Rita Pedro",
          userName: "rita",
          code: "12-28",
          state: true),
      Following(
          id: 1,
          name: "Teresa Miguel",
          userName: "Teresa",
          code: "12-23",
          state: true),
    ],
    followers: [
      Followers(
          id: 1,
          name: "Capeculo Eduardo",
          userName: "capeculo",
          code: "12-23",
          image: "assets/images/img1.jpg",
          state: true),
      Followers(
          id: 1,
          name: "Vadilson Kionda",
          userName: "vadilson",
          code: "14-23",
          image: "assets/images/img2.jpg",
          state: false),
      Followers(
          id: 1,
          name: "Pedro Bianda",
          userName: "pedro Bianda",
          code: "12-24",
          state: true),
    ],
    friends: [
      Friends(
          id: 1,
          name: "Capeculo Eduardo",
          userName: "capeculo",
          code: "12-23",
          image: "assets/images/img3.jpg",
          state: true),
      Friends(
          id: 1,
          name: "Vadilson Kionda",
          userName: "vadilson",
          code: "14-23",
          image: "assets/images/img2.jpg",
          state: false),
    ],
  );

  static User user1 = User(
    name: "Uriel dos Santos",
    userName: "Tony Stark",
    id: "1234567788",
    image: "assets/images/img2.jpg",
    visitors: [
      Visitors(
          id: 1,
          name: "Capeculo Eduardo",
          userName: "capeculo",
          code: "12-23",
          image: "assets/images/img1.jpg",
          state: true),
      Visitors(
          id: 1,
          name: "Vadilson Kionda",
          userName: "vadilson",
          code: "14-23",
          image: "assets/images/img1.jpg",
          state: false),
      Visitors(
          id: 1,
          name: "Pedro Bianda",
          userName: "pedro Bianda",
          code: "12-24",
          state: true),
      Visitors(
          id: 1,
          name: "Rita Pedro",
          userName: "rita",
          code: "12-28",
          state: true),
      Visitors(
          id: 1,
          name: "Teresa Miguel",
          userName: "Teresa",
          code: "12-23",
          state: true),
    ],
    following: [
      Following(
          id: 1,
          name: "Capeculo Eduardo",
          userName: "capeculo",
          code: "12-23",
          image: "assets/images/img1.jpg",
          state: true),
      Following(
          id: 1,
          name: "Vadilson Kionda",
          userName: "vadilson",
          code: "14-23",
          image: "assets/images/img1.jpg",
          state: false),
      Following(
          id: 1,
          name: "Pedro Bianda",
          userName: "pedro Bianda",
          code: "12-24",
          state: true),
      Following(
          id: 1,
          name: "Rita Pedro",
          userName: "rita",
          code: "12-28",
          state: true),
      Following(
          id: 1,
          name: "Teresa Miguel",
          userName: "Teresa",
          code: "12-23",
          state: true),
    ],
    followers: [
      Followers(
          id: 1,
          name: "Capeculo Eduardo",
          userName: "capeculo",
          code: "12-23",
          image: "assets/images/img1.jpg",
          state: true),
      Followers(
          id: 1,
          name: "Vadilson Kionda",
          userName: "vadilson",
          code: "14-23",
          image: "assets/images/img2.jpg",
          state: false),
      Followers(
          id: 1,
          name: "Pedro Bianda",
          userName: "pedro Bianda",
          code: "12-24",
          state: true),
    ],
    friends: [
      Friends(
          id: 1,
          name: "Capeculo Eduardo",
          userName: "capeculo",
          code: "12-23",
          image: "assets/images/img3.jpg",
          state: true),
      Friends(
          id: 1,
          name: "Vadilson Kionda",
          userName: "vadilson",
          code: "14-23",
          image: "assets/images/img2.jpg",
          state: false),
    ],
  );

  static User user2 = User(
    name: "Romão Bernado",
    userName: "Tony Stark",
    id: "1234567788",
    image: "assets/images/img2.jpg",
    visitors: [
      Visitors(
          id: 1,
          name: "Capeculo Eduardo",
          userName: "capeculo",
          code: "12-23",
          image: "assets/images/img1.jpg",
          state: true),
      Visitors(
          id: 1,
          name: "Vadilson Kionda",
          userName: "vadilson",
          code: "14-23",
          image: "assets/images/img1.jpg",
          state: false),
      Visitors(
          id: 1,
          name: "Pedro Bianda",
          userName: "pedro Bianda",
          code: "12-24",
          state: true),
      Visitors(
          id: 1,
          name: "Rita Pedro", userName: "rita", code: "12-28", state: true),
      Visitors(
          id: 1,
          name: "Teresa Miguel",
          userName: "Teresa",
          code: "12-23",
          state: true),
    ],
    following: [
      Following(
          id: 1,
          name: "Capeculo Eduardo",
          userName: "capeculo",
          code: "12-23",
          image: "assets/images/img1.jpg",
          state: true),
      Following(
          id: 1,
          name: "Vadilson Kionda",
          userName: "vadilson",
          code: "14-23",
          image: "assets/images/img1.jpg",
          state: false),
      Following(
          id: 1,
          name: "Pedro Bianda",
          userName: "pedro Bianda",
          code: "12-24",
          state: true),
      Following(
          id: 1,
          name: "Rita Pedro", userName: "rita", code: "12-28", state: true),
      Following(
          id: 1,
          name: "Teresa Miguel",
          userName: "Teresa",
          code: "12-23",
          state: true),
    ],
    followers: [
      Followers(
          id: 1,
          name: "Capeculo Eduardo",
          userName: "capeculo",
          code: "12-23",
          image: "assets/images/img1.jpg",
          state: true),
      Followers(
          id: 1,
          name: "Vadilson Kionda",
          userName: "vadilson",
          code: "14-23",
          image: "assets/images/img2.jpg",
          state: false),
      Followers(
          id: 1,
          name: "Pedro Bianda",
          userName: "pedro Bianda",
          code: "12-24",
          state: true),
    ],
    friends: [
      Friends(
          id: 1,
          name: "Capeculo Eduardo",
          userName: "capeculo",
          code: "12-23",
          image: "assets/images/img3.jpg",
          state: true),
      Friends(
          id: 1,
          name: "Vadilson Kionda",
          userName: "vadilson",
          code: "14-23",
          image: "assets/images/img2.jpg",
          state: false),
    ],
  );

  static Simple Users = Simple(id: "344543", user: [user, user1, user2]);
}
