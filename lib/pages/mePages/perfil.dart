import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:talk_talk/models/SimpleUser.dart';
import 'package:talk_talk/pages/mePages/outhers1/perfil_aux.dart';
import 'package:talk_talk/utls/Colors.dart';
import 'package:talk_talk/utls/sizes.dart';


class Perfil extends StatefulWidget {
  late String id;

  Perfil({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {

  PageController pageController = PageController(initialPage: 0);
  bool recentlyLogic = true;
  bool joinedLogic = false;


  changeContainerCenter(int pos) {
    setState(() {
      if (pos == 0) {
        recentlyLogic = true;
        joinedLogic = false;

      }
      if (pos == 1) {
        recentlyLogic = false;
        joinedLogic = true;

      }

    });
  }


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.white,
            size: size22,
          ),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          Icon(
            Icons.hexagon_outlined,
            color: Colors.white,
            size: size22,
          ),
        ],
      ),
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
            decoration: BoxDecoration(
              image: DecorationImage(
                image: SimpleUser.user.image != null
                    ? AssetImage(SimpleUser.user.image!)
                    : const AssetImage("assets/images/img2.jpg"),
                fit: BoxFit.cover,
                scale: 0.5,
                opacity: 0.7,
              ),
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: SimpleUser.user.image != null
                          ? AssetImage(SimpleUser.user.image!)
                          : const AssetImage("assets/images/img2.jpg"),
                    ),
                    Text(
                      SimpleUser.user.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: size16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      SimpleUser.user.userName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size16,
                      ),
                    ),
                    Text(
                      "ID: ${SimpleUser.user.id}",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ]),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  topRight: Radius.circular(5.0)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      subTitle(
                          txt: tr("visitors"),
                          num: 1,
                          route: MaterialPageRoute(
                            builder: (context) => PerfilAux(
                              title: tr("visitors"),
                              pos: 0,
                            ),
                          )),
                      subTitle(
                          txt: tr("following"),
                          num: 2,
                          route: MaterialPageRoute(
                            builder: (context) => PerfilAux(
                              title: tr("following"),
                              pos: 1,
                            ),
                          )),
                      subTitle(
                          txt: tr("followers"),
                          num: 3,
                          route: MaterialPageRoute(
                            builder: (context) => PerfilAux(
                              title: tr("followers"),
                              pos: 2,
                            ),
                          )),
                      subTitle(
                          txt: tr("friends"),
                          num: 4,
                          route: MaterialPageRoute(
                            builder: (context) => PerfilAux(
                              title: tr("friends"),
                              pos: 3,
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width,

                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 15,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.access_alarms_rounded,
                              size: size30, color: Colors.black),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tr("join_family"),
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(tr("click_family") ),
                            ],
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: size24,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width,
                  height: 130.0,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            const Stack(
                              alignment: Alignment.center,
                              children: [
                                Icon(
                                  Icons.heart_broken,
                                  color: Colors.black,
                                  size: 120.0,
                                ),
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.blue,
                                  child: Icon(
                                    Icons.man_outlined,
                                    color: Colors.black,
                                    size: 40.0,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                                padding: const EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: const Text(
                                  "Antonio",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                )),
                          ],
                        ),
                        const Text(
                          "CP",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            const Stack(
                              alignment: Alignment.center,
                              children: [
                                Icon(
                                  Icons.heart_broken,
                                  color: Colors.black,
                                  size: 120.0,
                                ),
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.blue,
                                  child: Icon(
                                    Icons.woman_outlined,
                                    color: Colors.black,
                                    size: 40.0,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Text(
                                  tr("invite"),
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        tr("album"),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(tr("edit_album")) ,
                          const SizedBox(
                            width: 5.0,
                          ),
                          const Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ],
                  ),
                ),
                
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()  async {

                         final file= await  ImagePicker().pickImage(source: ImageSource.gallery);

                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 20.0,bottom: 20.0),
                        height: 50.0,
                        width: 50.0,
                        decoration:const  BoxDecoration(
                          color: Colors.grey,
                        ),
                        child:const  Icon(Icons.add),

                      ),
                    ),
                  ],
                ),


                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      selectTitle(tr("badge"), recentlyLogic, 0),
                      Icon(
                        Icons.vertical_align_bottom,
                        color: kContentColorDarkTheme,
                        size: size16,
                      ),
                      selectTitle(tr("gifts_collection"), joinedLogic, 1),

                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: kColorsBlueGrey600,
                  ),
                  child: PageView(
                    onPageChanged: (pos) {
                      changeContainerCenter(pos);
                    },
                    controller: pageController,
                    children: [
                      containerCenter(1),
                      containerCenter(2),

                    ],
                  ),
                ),
              ],
            ),
          )
        ],
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
              fontSize: size16,
              color: Colors.black,
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
      child: Container(
        padding:const EdgeInsets.only(left: 5.0,right: 5.0),
        child: Text(
          text,
          style: TextStyle(
              fontSize: size16,
              fontWeight: FontWeight.bold,
              color: select ? kLetterColorLightTheme: kLetterColorDarkTheme),
        ),
      ),
    );
  }
}



