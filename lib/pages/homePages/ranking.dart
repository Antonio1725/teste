import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:talk_talk/utls/Colors.dart';
import 'package:talk_talk/utls/sizes.dart';

class Ranking extends StatefulWidget {
  const Ranking({super.key});

  @override
  State<Ranking> createState() => _RankingState();
}

class _RankingState extends State<Ranking> {
  bool selected1 = true;
  bool selected2 = false;
  bool selected3 = false;
  Color colorSubMenuP = Colors.blue;
  Color colorSubMenu = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          tr("ranking"),
          style: TextStyle(fontSize: size18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_outlined,size: size16,color: Colors.black,),
        ),
        actions: [
          Icon(
            Icons.help_outline,
            size: size26,
            color: Colors.black,
          ),
          const SizedBox(
            width: 20.0,
          ),
          Icon(
            Icons.update_outlined,
            size: size26,
            color: Colors.black,
          ),
          const SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: body(),
      extendBody: true,
      extendBodyBehindAppBar: true,
    );
  }

  Widget body() {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 0,
        toolbarHeight: 120.0,
        titleSpacing: 0.0,
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.pink,
              colorSubMenuP,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, .4),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      subMenu(txt: tr("room"), selected: selected1, num: 1),
                      subMenu(txt: tr("sent"), selected: selected2, num: 2),
                      subMenu(txt: tr("received"), selected: selected3, num: 3),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      tr("hourly"),
                      style: TextStyle(
                        fontSize: size12,
                        color: kIconColor,
                      ),
                    ),
                    Text(
                      tr("daily"),
                      style: TextStyle(
                        fontSize: size12,
                        color: kIconColor,
                      ),
                    ),
                    Text(
                      tr("weekly"),
                      style: TextStyle(
                        fontSize: size12,
                        color: kIconColor,
                      ),
                    ),
                    Text(
                      tr("monthly"),
                      style: TextStyle(
                        fontSize: size12,
                        color: kIconColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: bodyAux(),
    );
  }

  Widget bodyAux() {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200.0,
          decoration: BoxDecoration(
            color: colorSubMenu,
          ),
          child: Column(
            children: [
              Text(
               tr("champions"),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: size20,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  elementsChampions(
                      image: "assets/images/img1.jpg", txt: "Primary"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  elementsChampions(
                      image: "assets/images/img2.jpg", txt: "Secand"),
                  const SizedBox(
                    width: 70.0,
                  ),
                  elementsChampions(
                      image: "assets/images/img3.jpg", txt: "Thirst"),
                ],
              )
            ],
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              Container(
                decoration: const BoxDecoration(
                    color:  kColorsGrey200,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    )),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                           tr("this_hour") ,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: size16),
                          ),
                          Text(
                            "12",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: size16),
                          ),
                        ],
                      ),
                    ),
                    listContainerElement(),
                    listContainerElement(),
                    listContainerElement(),
                    listContainerElement(),
                    listContainerElement(),
                    listContainerElement(),
                    listContainerElement(),
                    listContainerElement(),
                    listContainerElement(),
                    listContainerElement(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget listContainerElement() {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      padding: const EdgeInsets.only(top: 10.0),
      width: MediaQuery.of(context).size.height,
      height: 100.0,
      decoration: const BoxDecoration(
        color: kContentColorDarkTheme,
        border: Border(top: BorderSide(color: Colors.grey)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "1",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: size18),
                ),
              ),
              Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/img1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 20.0,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Antonio Diogo",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Right"),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "13k",
                style: TextStyle(color: Colors.amber),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget subMenu({required String txt, required bool selected, required int num}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (num == 1) {
            selected1 = true;
            selected2 = false;
            selected3 = false;
            colorSubMenuP = kColorsBlue600;
            colorSubMenu = kColorsBlue600 ;
          }

          if (num == 2) {
            selected1 = false;
            selected2 = true;
            selected3 = false;
            colorSubMenuP = kColorsAmber;
            colorSubMenu = kColorsAmber;
          }

          if (num == 3) {
            selected1 = false;
            selected2 = false;
            selected3 = true;
            colorSubMenuP = kColorsGreen;
            colorSubMenu = kColorsGreen;
          }
        });
      },
      child: Container(
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: selected ? kContentColorLightTheme : kTraparentColor,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Text(
          txt,
          style: TextStyle(
              fontSize: size12,
              color: selected ? kLetterColorDarkTheme: kLetterColorLightTheme,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget elementsChampions({
    required String image,
    required String txt,
  }) {
    return Column(
      children: [
        Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 3.0,
        ),
        Container(
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            color: kColorsPink,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Text(
            txt,
            style: const TextStyle(
                color: kLetterColorLightTheme,
                fontWeight: FontWeight.bold,
                fontSize: 10.0),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
