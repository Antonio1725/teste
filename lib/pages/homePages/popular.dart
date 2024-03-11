import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/pages/homePages/PerfilUser.dart';
import 'package:talk_talk/utls/Colors.dart';
import 'package:talk_talk/utls/GradientColor.dart';
import 'package:talk_talk/utls/sizes.dart';
import 'package:talk_talk/widgets/bottomNavigationBarAux.dart';
import 'package:talk_talk/widgets/fiveLinksPages.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:talk_talk/widgets/floatingActionButtonAux.dart';

class Popular extends StatefulWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  State<Popular> createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: kTraparentColor,
        leadingWidth: 0,
        leading: Container(),
        title: const FiveLinksPages(
          popularTxtColor: kLetterColorDarkTheme,
          selected: true,
        ),
      ),
      floatingActionButton: const FloatingActionButtonAux(),
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: gBlackWhite,
            ),
          ),
          child: body()),
      bottomNavigationBar: const BottomNavigationBarAux(
        homeColor: kColorsAmber,
      ),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.5,
              autoPlay: true,
              viewportFraction: 1,
            ),
            items: [
              imgCarousel(txtImage: "assets/images/img1.jpg"),
              imgCarousel(txtImage: "assets/images/img2.jpg"),
              imgCarousel(txtImage: "assets/images/img3.jpg"),
            ],
          ),
          Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
            ),
            Column(
              children: List.generate(7, (index) {
                if (index == 2) {
                  return Column(
                    children: [
                      listContainerElementAux(),
                      listContainerElement(
                          id: "2345567686753",
                          perfilImg: "assets/images/img1.jpg",
                          name: "António dos Santos Diogo",
                          subName: "Antonio",
                          subTitle: "Olá, Seja Bem Vindo",
                          num: "23"),
                    ],
                  );
                } else {
                  return listContainerElement(
                      id: "6000043433322",
                      perfilImg: "assets/images/img2.jpg",
                      name: "Capeculo Paciência",
                      subName: "Capeculo",
                      subTitle: "Olá, Tenha Um Bom Dia",
                      num: "23");
                }
              }),

              /*[null
                listContainerElement(),
                listContainerElement(),
                listContainerElement(),
                listContainerElement(),
                listContainerElement(),
                listContainerElement(),
                listContainerElement(),
              ]*/
            )
          ]),
        ],
      ),
    );
  }

  Widget imgCarousel({required String txtImage}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(txtImage),
              fit: BoxFit.fill,
              filterQuality: FilterQuality.high)),
    );
  }

  Widget listContainerElement(
      {required String id,
      required String perfilImg,
      required String name,
      required String subName,
      required String subTitle,
      required String num}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    PerfilUser(name: name, id: id, img: perfilImg)));
      },
      child: Container(
        margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: const BoxDecoration(
          color: kContentColorDarkTheme,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(perfilImg),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  Container(
                      padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: kColorsAmber,
                      ),
                      child: Text(subName)),
                  Text(
                    subTitle,
                    style: const TextStyle(fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 20.0,
                        height: 20.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/imagesGIF/somTocando.gif"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text("123"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget listContainerElementAux() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ContainerAux(
            txt: tr("voice_chat"), icon: Icons.call, bgColor: kColorsBlue800),
        ContainerAux(
            txt: tr("beauties"),
            icon: Icons.handshake,
            bgColor: kColorsDeepOrange800),
        ContainerAux(txt: tr("game"), icon: Icons.games, bgColor: kColorsLime800),
      ],
    );
  }

  Widget ContainerAux(
      {required String txt, required IconData icon, required Color bgColor}) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: bgColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: size40,
            color: kColorsAmber,
          ),
          Text(
            txt,
            style: TextStyle(
                color: kColorsGrey100,
                fontSize: size16,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
