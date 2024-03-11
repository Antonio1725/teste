import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/utls/Colors.dart';
import 'package:talk_talk/utls/sizes.dart';
import 'package:talk_talk/widgets/bottomNavigationBarAux.dart';
import 'package:talk_talk/widgets/fiveLinksPages.dart';
import 'package:talk_talk/widgets/floatingActionButtonAux.dart';

class Related extends StatefulWidget {
  const Related({Key? key}) : super(key: key);

  @override
  State<Related> createState() => _RelatedState();
}

class _RelatedState extends State<Related> {
  PageController pageController = PageController(initialPage: 0);
  bool recentlyLogic = true;
  bool joinedLogic = false;
  bool followingLogic = false;

  changeContainerCenter(int pos) {
    setState(() {
      if (pos == 0) {
        recentlyLogic = true;
        joinedLogic = false;
        followingLogic = false;
      }
      if (pos == 1) {
        recentlyLogic = false;
        joinedLogic = true;
        followingLogic = false;
      }
      if (pos == 2) {
        recentlyLogic = false;
        joinedLogic = false;
        followingLogic = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kContentColorLightTheme,
        leadingWidth: 0,
        leading: Container(),
        title: const FiveLinksPages(
          relatedTxtColor: kContentColorDarkTheme,
          selected: true,
        ),
      ),
      floatingActionButton: const FloatingActionButtonAux(),
      backgroundColor: kColorsBlueGrey300,
      body: SingleChildScrollView(
        child: body(),
      ),
      bottomNavigationBar: const BottomNavigationBarAux(
        homeColor:kContentColorDarkTheme,
      ),
    );
  }

  Widget body() {
    return Column(
      children: [
        Container(
          color: kContentColorDarkTheme,
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.00,
                width: double.infinity,
                margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_circle,
                      size: SizeIconBody,
                      color: kLetterColorLightTheme,
                    ),
                    Text(
                      tr("create_my_room"),
                      style: TextStyle(
                        color: kLetterColorLightTheme,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 5.0,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    selectTitle(tr("recently"), recentlyLogic, 0),
                    Icon(
                      Icons.star_sharp,
                      color: kLetterColorLightTheme,
                      size: size16,
                    ),
                    selectTitle(tr("joined"), joinedLogic, 1),
                    Icon(
                      Icons.star_sharp,
                      color:kLetterColorLightTheme,
                      size: size16,
                    ),
                    selectTitle(tr("following"), followingLogic, 2),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: PageView(
            onPageChanged: (pos) {
              changeContainerCenter(pos);
            },
            controller: pageController,
            children: [
              containerCenter(1),
              containerCenter(2),
              containerCenter(3),
            ],
          ),
        ),
      ],
    );
  }

  Widget containerCenter(int num) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.account_tree,
          size: 200.0,
          color: Colors.blue,
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text("No Results $num"),
      ],
    );
  }

  Widget selectTitle(String text, bool select, int pos) {
    return GestureDetector(
      onTap: () {
        setState(() {
          pageController.jumpToPage(pos);
        });
        changeContainerCenter(pos);
      },
      child: Text(
        text,
        style: TextStyle(
            fontSize: size16,
            fontWeight: FontWeight.bold,
            color: select ? kLetterColorDarkTheme : kLetterColorLightTheme),
      ),
    );
  }
}
