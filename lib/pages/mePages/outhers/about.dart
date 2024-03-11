import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/utls/sizes.dart';
import 'package:talk_talk/widgets/iconTexticon.dart';
import 'package:talk_talk/widgets/lineHorizontal.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
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
          tr("about"),
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
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "TT",
                  style: TextStyle(color: Colors.purple, fontSize: 40.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "TalkTalk",
                  style: TextStyle(color: Colors.purple, fontSize: size18),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "3.2.4(336)",
                  style: TextStyle(fontSize: 10.0),
                ),
                Text(
                  "www.moleive.com",
                  style: TextStyle(fontSize: 10.0),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5.0,
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
            child: Column(children: [
              IconTextIcon(
                txt: tr("terms_of_service"),
                builder: null,
              ),
              const LineHorizontal(),
              IconTextIcon(
                txt: tr("privacy"),
                builder: null,
              ),
              const LineHorizontal(),
              IconTextIcon(
                txt: tr("return_policy"),
                builder: null,
              ),
              const LineHorizontal(),
              IconTextIcon(
                txt: tr("intellectual_rights"),
                builder: null,
              ),
              const LineHorizontal(),
              IconTextIcon(
                txt: tr("supported_methods"),
                builder: null,
              ),
              const LineHorizontal(),
            ]),
          ),
        ],
      ),
    );
  }
}
