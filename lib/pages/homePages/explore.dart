import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/utls/Colors.dart';
import 'package:talk_talk/utls/sizes.dart';
import 'package:talk_talk/widgets/bottomNavigationBarAux.dart';
import 'package:talk_talk/widgets/fiveLinksPages.dart';
import 'package:talk_talk/widgets/floatingActionButtonAux.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 0,
        leading: Container(),
        title: const FiveLinksPages(
          exploreTxtColor: Colors.black,
          selected: true,
        ),
      ),
      floatingActionButton: const FloatingActionButtonAux(),
      backgroundColor: kColorsGrey400,
      body: body(),
      bottomNavigationBar: const BottomNavigationBarAux(
        homeColor: kColorsAmber500,
      ),
    );
  }

  Widget body() {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            stackAux(Colors.pinkAccent, tr("gift_wall"), Icons.add_a_photo_rounded,
                context),
            stackAux(Colors.blueAccent, tr("game"), Icons.access_alarms_rounded,
                context),
            stackAux(Colors.orangeAccent, tr("ranking"),
                Icons.accessibility_rounded, context)
          ],
        ),
        const SizedBox(
          height: 30.0,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              tr("following"),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 18.0,
            )
          ],
        ),
        const SizedBox(
          height: 25.0,
        ),
        Row(
          children: [
            followingImage(),
          ],
        ),
        const SizedBox(
          height: 25.0,
        ),
        Row(
          children: [
            Text(
              tr("new_room"),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        Column(
          children: [
            listContainerElement(
                context: context,
                img: "assets/images/img1.jpg",
                nome: "Magda da Costa",
                titulo: "Musica",
                subTitulo: "Leonardo da Costa",
                num: "12"),
            listContainerElement(
                context: context,
                img: "assets/images/img2.jpg",
                nome: "Capeculo Eduardo",
                titulo: "Musica",
                subTitulo: "Leonardo da Costa",
                num: "20"),
          ],
        ),
      ]),
    ));
  }

  Widget followingImage() {
    return Column(
      children: [
        Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            image: const DecorationImage(
              image: AssetImage("assets/images/img1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.blue,
                Colors.green,
              ],
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.message_outlined,
                color: Colors.white,
                size: 8.0,
              ),
              SizedBox(
                width: 2.0,
              ),
              Text(
                "Chat",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget stackAux(Color bg, String txt, IconData icon, BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      alignment: Alignment.bottomRight,
      children: [
        Container(
          height: 100.0,
          width: MediaQuery.of(context).size.width / 3 - 10,
          decoration: BoxDecoration(
            color: bg,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              txt,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kLetterColorDarkTheme,
                  fontSize: size14),
              textAlign: TextAlign.start,
            ),
          ),
        ),
        Positioned(
          bottom: -10.0,
          child: Icon(
            icon,
            size: size50,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  Widget listContainerElement(
      {required BuildContext context,
      required String img,
      required String nome,
      required String titulo,
      required String subTitulo,
      required String num}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      width: MediaQuery.of(context).size.width,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: kLetterColorDarkTheme,
      ),
      child: Row(
        children: [
          Container(
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(nome),
              Text(titulo),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(subTitulo),
                  const SizedBox(
                    width: 50.0,
                  ),
                  Text(num),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
