import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/utls/sizes.dart';
import 'package:talk_talk/widgets/bottonBlueRed.dart';
import 'package:talk_talk/widgets/iconTexticon.dart';
import 'package:talk_talk/widgets/lineHorizontal.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({super.key});

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100.0,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.black,
                  size: size24,
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Icon(
                Icons.highlight_remove_outlined,
                color: Colors.black,
                size: size24,
              ),
            ],
          ),
        ),
        title: Text(
          "TalkTalk",
          style: TextStyle(fontSize: size16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              Icons.update,
              color: Colors.black,
              size: size24,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey,
      body: body(),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    boxTitle(
                        icon: Icons.fire_hydrant_alt,
                        colorIcon: Colors.pink,
                        txt: tr("common_questions")),
                    const SizedBox(
                      width: 10.0,
                    ),
                    boxTitle(
                        icon: Icons.email,
                        colorIcon: Colors.purple,
                        txt: tr("room_member")),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    boxTitle(
                        icon: Icons.book,
                        colorIcon: Colors.green,
                        txt: tr("recharge")),
                    const SizedBox(
                      width: 10.0,
                    ),
                    boxTitle(
                        icon: Icons.people_alt,
                        colorIcon: Colors.orange,
                        txt: tr("friends_management"),
                    )],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
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
                  txt: tr("how_feedback"),
                  icon: Icons.question_mark_outlined,
                  builder: null,
                ),
              const  LineHorizontal(),
                IconTextIcon(
                  txt: tr("how_report"),
                  icon: Icons.question_mark_outlined,
                  builder: null,
                ),
                const  LineHorizontal(),
                IconTextIcon(
                  txt: tr("how_region"),
                  icon: Icons.question_mark_outlined,
                  builder: null,
                ),
                const  LineHorizontal(),
                IconTextIcon(
                  txt: tr("how_ID"),
                  icon: Icons.question_mark_outlined,
                  builder: null,
                ),
                const  LineHorizontal(),
                IconTextIcon(
                  txt: tr("how_country"),
                  icon: Icons.question_mark_outlined,
                  builder: null,
                ),
                const  LineHorizontal(),
                IconTextIcon(
                  txt: tr("online_room"),
                  icon: Icons.question_mark_outlined,
                  builder: null,
                ),
                const  LineHorizontal(),
              ],
            ),
          ),
         BottonBlueRed(txt:tr("customer_service"),),
        ],
      ),
    );
  }

  Widget line() {
    return Container(
      height: 1.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey,
    );
  }



  Widget boxTitle(
      {required IconData icon, required Color colorIcon, required String txt}) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5 - 15.0,
        height: 75.0,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: colorIcon,
              size: size30,
            ),
            const SizedBox(
              width: 5.0,
            ),
            Text(txt),
          ],
        ),
      ),
    );
  }
}
