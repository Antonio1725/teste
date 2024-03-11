import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/models/SimpleUser.dart';
import 'package:talk_talk/pages/mePages/aristocracy.dart';
import 'package:talk_talk/pages/mePages/bag.dart';
import 'package:talk_talk/pages/mePages/family.dart';
import 'package:talk_talk/pages/mePages/game.dart';
import 'package:talk_talk/pages/mePages/level.dart';
import 'package:talk_talk/pages/mePages/outhers/about.dart';
import 'package:talk_talk/pages/mePages/outhers/feedBack.dart';
import 'package:talk_talk/pages/mePages/outhers/settings.dart';
import 'package:talk_talk/pages/mePages/outhers1/perfil_aux.dart';
import 'package:talk_talk/pages/mePages/perfil.dart';
import 'package:talk_talk/pages/mePages/relations.dart';
import 'package:talk_talk/pages/mePages/store.dart';
import 'package:talk_talk/pages/mePages/vip.dart';
import 'package:talk_talk/pages/mePages/wallet.dart';
import 'package:talk_talk/utls/Colors.dart';
import 'package:talk_talk/utls/sizes.dart';
import 'package:talk_talk/widgets/bottomNavigationBarAux.dart';
import 'package:talk_talk/widgets/iconTexticon.dart';
import 'package:talk_talk/widgets/lineHorizontal.dart';

class Me extends StatefulWidget {
  const Me({Key? key}) : super(key: key);

  @override
  State<Me> createState() => _MeState();
}

class _MeState extends State<Me> {
  bool showHindMenu = true;
  Color colorsBar = Colors.grey;

  late int v;
  late int f;
  late int ff;
  late int fr;
  late String imageUser;

  @override
  void initState() {
    super.initState();
    v = SimpleUser.user.visitors?.length ?? 0;
    f = SimpleUser.user.following?.length ?? 0;
    ff = SimpleUser.user.followers?.length ?? 0;
    fr = SimpleUser.user.friends?.length ?? 0;
    imageUser = SimpleUser.user.image ?? "assets/images/img3.jpg";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarAux(
        meColor: kColorsAmber,
      ),
      backgroundColor: colorsBar,
      body: body(),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5 - 50.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/img1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Perfil(id: SimpleUser.user.id)));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(imageUser),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  SimpleUser.user.name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: size14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  SimpleUser.user.id,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: size22,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      subTitle(
                          txt: tr("visitors"),
                          num: v,
                          route: MaterialPageRoute(
                            builder: (context) => PerfilAux(
                              title: "${tr("visitors")}($v)",
                              pos: 0,
                            ),
                          )),
                      subTitle(
                          txt: tr("following"),
                          num: f,
                          route: MaterialPageRoute(
                            builder: (context) => PerfilAux(
                              title: "${tr("following")}($f)",
                              pos: 1,
                            ),
                          )),
                      subTitle(
                          txt: tr("followers"),
                          num: ff,
                          route: MaterialPageRoute(
                            builder: (context) => PerfilAux(
                              title: "${tr("followers")}($ff)",
                              pos: 2,
                            ),
                          )),
                      subTitle(
                          txt: tr("friends"),
                          num: fr,
                          route: MaterialPageRoute(
                            builder: (context) => PerfilAux(
                              title: "${tr("friends")}($fr)",
                              pos: 3,
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.blue,
                  Colors.pink,
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        tr("do_rewards"),
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0),
                      ),
                      Row(
                        children: [
                          Text(
                            tr("more_tasks"),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 10.0),
                          ),
                          const Icon(
                            Icons.arrow_right_rounded,
                            color: Colors.white,
                            size: 10.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              margin: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                gradient: const LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.blue,
                                    Colors.pink,
                                  ],
                                ),
                              ),
                              child: Icon(
                                Icons.adb,
                                color: Colors.white,
                                size: size16,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  tr("send"),
                                  style: const TextStyle(fontSize: 10.0),
                                ),
                                const Text(
                                  "300",
                                  style: TextStyle(fontSize: 10.0),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.blue,
                                  Colors.pink,
                                ],
                              ),
                            ),
                            child: SizedBox(
                              width: 60.0,
                              height: 30.0,
                              child: Center(
                                child: Text(
                                  tr("go"),
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
            padding: const EdgeInsets.all(10.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    iconsAux(
                      txt: tr("wallet"),
                      icon: Icons.access_alarms_sharp,
                      color: const Color.fromRGBO(20, 100, 200, 1),
                      bgColor: const Color.fromRGBO(20, 100, 200, .3),
                      route: MaterialPageRoute(
                          builder: (context) => const Wallet()),
                    ),
                    iconsAux(
                      txt: tr("story"),
                      icon: Icons.abc_sharp,
                      color: const Color.fromRGBO(100, 180, 10, 1),
                      bgColor: const Color.fromRGBO(100, 180, 10, .3),
                      route: MaterialPageRoute(
                          builder: (context) => const Store()),
                    ),
                    iconsAux(
                      txt: tr("bag"),
                      icon: Icons.accessibility_new_outlined,
                      color: const Color.fromRGBO(10, 50, 111, 1),
                      bgColor: const Color.fromRGBO(111, 111, 111, .3),
                      route:
                          MaterialPageRoute(builder: (context) => const Bag()),
                    ),
                    iconsAux(
                      txt: tr("aristocracy"),
                      icon: Icons.add_card_sharp,
                      color: const Color.fromRGBO(100, 20, 20, 1),
                      bgColor: const Color.fromRGBO(111, 20, 20, .3),
                      route: MaterialPageRoute(
                          builder: (context) => const Aristocracy()),
                    ),
                    iconsAux(
                      txt: tr("vip"),
                      icon: Icons.account_balance_rounded,
                      color: const Color.fromRGBO(34, 13, 20, 1),
                      bgColor: const Color.fromRGBO(34, 13, 20, .3),
                      route:
                          MaterialPageRoute(builder: (context) => const Vip()),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    iconsAux(
                      txt: tr("game"),
                      icon: Icons.access_time_filled_sharp,
                      color: const Color.fromRGBO(255, 0, 0, 1),
                      bgColor: const Color.fromRGBO(255, 0, 0, .3),
                      route:
                          MaterialPageRoute(builder: (context) => const Game()),
                    ),
                    iconsAux(
                      txt: tr("level"),
                      icon: Icons.add_call,
                      color: const Color.fromRGBO(0, 255, 0, 1),
                      bgColor: const Color.fromRGBO(0, 255, 0, .1),
                      route: MaterialPageRoute(
                          builder: (context) => const Level()),
                    ),
                    iconsAux(
                      txt: tr("badge"),
                      icon: Icons.add_a_photo,
                      color: const Color.fromRGBO(0, 0, 255, 1),
                      bgColor: const Color.fromRGBO(0, 0, 255, .3),
                      route: MaterialPageRoute(
                          builder: (context) => const Badge()),
                    ),
                    iconsAux(
                      txt: tr("family"),
                      icon: Icons.account_tree,
                      color: const Color.fromRGBO(255, 255, 0, 1),
                      bgColor: const Color.fromRGBO(255, 255, 0, .1),
                      route: MaterialPageRoute(
                          builder: (context) => const Family()),
                    ),
                    iconsAux(
                      txt: tr("relations"),
                      icon: Icons.access_alarms_sharp,
                      color: const Color.fromRGBO(255, 0, 255, 1),
                      bgColor: const Color.fromRGBO(255, 0, 255, .3),
                      route: MaterialPageRoute(
                          builder: (context) => const Relations()),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
            padding: const EdgeInsets.only(
              left: 10.0,
              right: 10.0,
            ),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                IconTextIcon(
                  txt: tr("faq_feedback"),
                  icon: Icons.access_alarms_rounded,
                  builder:(context) => const FeedBack(),
                ),
                const  LineHorizontal(),
                IconTextIcon(
                  txt: tr("about"),
                  icon: Icons.add_alert,
                  builder: (context) => const About(),
                ),
               const  LineHorizontal(),
                IconTextIcon(
                  txt: tr("settings"),
                  icon: Icons.accessibility_new,
                  builder: (context) => const Settings(),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 100.0,
          ),
        ],
      ),
    );
  }

  Widget iconsAux(
      {required String txt,
      required IconData icon,
      required Color color,
      required Color bgColor,
      required Route route}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, route);
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Icon(
                icon,
                color: color,
                size: size20,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              txt,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget subTitle(
      {required String txt, required int num, required Route route}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, route);
      },
      child: Column(
        children: [
          Text(
            num.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: size14,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            txt,
            style: TextStyle(
              fontSize: size14,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
