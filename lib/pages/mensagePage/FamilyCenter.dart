import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/config/app_config.dart';
import 'package:talk_talk/models/SimpleUser.dart';
import 'package:talk_talk/pages/mePages/perfil.dart';
import 'package:talk_talk/utls/Colors.dart';
import 'package:talk_talk/utls/GradientColor.dart';
import 'package:talk_talk/utls/sizes.dart';

class FamilyCenter extends StatefulWidget {
  const FamilyCenter({super.key});

  @override
  State<FamilyCenter> createState() => _FamilyCenterState();
}

class _FamilyCenterState extends State<FamilyCenter> {
  PageController pageController = PageController(initialPage: 0);
  bool recommended = true;
  bool talk_talk_family = false;
  bool  isJoin = true;
  bool selected1 = true;
  bool selected2 = false;

  Color colorSubMenuP = Colors.blue;
  Color colorSubMenu = Colors.blue;

  changeContainerCenter(int pos) {
    setState(() {
      if (pos == 0) {
        recommended = true;
        talk_talk_family = false;
      }
      if (pos == 1) {
        recommended = false;
        talk_talk_family = true;
      }
    });
  }


  PageController pageController1 = PageController(initialPage: 0);
  bool hot = true;
  bool niw = false;

  changeContainerCenter1(int pos) {
    setState(() {
      if (pos == 0) {
        hot = true;
        niw = false;
      }
      if (pos == 1) {
        hot = false;
        niw = true;
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        toolbarHeight: 90.0,
        titleSpacing: 0,
        leading: Container(),
        leadingWidth: 0,
        title: Container(
          padding: const EdgeInsets.all(
              10),
          decoration: BoxDecoration(
            gradient: linearGradient_BrownOrange,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.white,
                        size: size24,
                      ),
                    ),
                    Text(
                      AppConfig.appName+" " +tr("family"),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size16,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                     tr("rules") ,
                      style: TextStyle(
                          fontSize: size16,
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height:20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  selectTitle(tr("recommended"), recommended, 0),
                  Column(
                    children: [
                      Icon(
                        Icons.star_rate_sharp,
                        color: kContentColorDarkTheme,
                        size: size16,
                      ),
                    ],
                  ),
                  selectTitle(AppConfig.appName+" " +tr("family"),  talk_talk_family, 1),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor:  kColorsGrey,
      body: body(),
      bottomNavigationBar:  Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(30.0),
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient:  LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: gBrownOrange),
        ),
        child:Center(
            child: Text(
              tr("create_family"),
              style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )),
      ),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: MediaQuery
                .of(context)
                .size
                .height,
            width: MediaQuery
                .of(context)
                .size
                .width,
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: PageView(
              onPageChanged: (pos) {
                changeContainerCenter(pos);
              },
              controller: pageController,
              children: [
                containerBady(),
                 body1(),
              ],
            ),
          ),
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

  Widget containerBady() {
    return Column(
      children: [
      
        containerGradient(
          child: Container(

            width: MediaQuery
                .of(context)
                .size
                .width,
            margin: const EdgeInsets.all(10.0),
            height: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
            ),
            child:  Center(
              child: Text("Talk Talk Family", style: TextStyle(fontSize: size20),),
            ),

          ),
        ),



        containerGradient(
          child: Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery.of(context).size.height*0.8,
            decoration: const BoxDecoration(
              color: kColorsGrey,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15.0),
                  topLeft: Radius.circular(15.0),
              ),
            ),
            child:Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      selectTitle1(tr("hot"), hot, 0),
                    const  SizedBox(width: 20.0,),
                      selectTitle1(tr("new"),  niw, 1),
                    ],
                  ),
                ),

                Expanded(
                  child: Container(
                  
                    width: MediaQuery.of(context).size.width,
                    margin:const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: PageView(
                      
                      onPageChanged: (pos) {
                        changeContainerCenter1(pos);
                      },
                      controller: pageController1,
                      children: [
                       containerHot(list: SimpleUser.user.friends!),
                       containerNew(list: SimpleUser.user.visitors!),
                      ],
                    ),
                  ),
                ),



              ],
            ),
          
          
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 5.0, right: 5.0),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: size16,
                  fontWeight: FontWeight.bold,
                  color: select ? kLetterColorLightTheme : kLetterColorDarkTheme),
            ),
          ),

        ],
      ),
    );
  }

  Widget selectTitle1(String text, bool select, int pos) {
    return GestureDetector(
      onTap: () {
        setState(() {
          pageController1.jumpToPage(pos);
        });
        changeContainerCenter1(pos);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 5.0, right: 5.0),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: select ? size20 : size16,
                  fontWeight: FontWeight.bold,
                  color: select ? kLetterColorLightTheme : kLetterColorDarkTheme),
            ),
          ),

        ],
      ),
    );
  }
  
  
  
  Widget containerGradient({required Widget child}){
    return   Container(
        decoration:  BoxDecoration(
        gradient: linearGradient_BrownOrange,
    ),
      child: child,
    );
  }


  Widget containerHot({required List list}){
    return  Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: ListView.builder(
          itemCount: list.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            if (list.isEmpty) {
              return const Text("Nenhuma Informação Encontrada");
            } else {
              if (true) {
                isJoin = list[index].state;
              }
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Perfil(
                            id: "123454",
                          )));
                },
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 5.0, top: 10.0, bottom: 10.0, right: 5.0),
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(
                    top: 5.0,
                    bottom: 5.0,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30.0,
                            child: list[index].image != null
                                ? Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage(list[index].image!),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                                : Icon(
                              Icons.person,
                              size: size40,
                              color: Colors.blue,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                list[index].name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "@" + list[index].userName,
                                style: const TextStyle(
                                    fontStyle: FontStyle.italic),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                               "${tr("member")}:"+
                                list[index].code,
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            list[index].state = !list[index].state;
                          });
                        },
                        child: Container(
                          height: 35.0,
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                width: 2.0,
                              )),
                          child: Center(
                            child: Text(
                              (isJoin ? tr("joined") : tr("join")),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          }),
    );
  }
  Widget containerNew({required List list}){
    return  Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: ListView.builder(
          itemCount: list.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            if (list.isEmpty) {
              return const Text("Nenhuma Informação Encontrada");
            } else {
              if (true) {
                isJoin = list[index].state;
              }
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Perfil(
                            id: "123454",
                          )));
                },
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 5.0, top: 10.0, bottom: 10.0, right: 5.0),
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(
                    top: 5.0,
                    bottom: 5.0,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30.0,
                            child: list[index].image != null
                                ? Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage(list[index].image!),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                                : Icon(
                              Icons.person,
                              size: size40,
                              color: Colors.blue,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                list[index].name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "@" + list[index].userName,
                                style: const TextStyle(
                                    fontStyle: FontStyle.italic),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                tr("member")+":"+
                                list[index].code,
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            list[index].state = !list[index].state;
                          });
                        },
                        child: Container(
                          height: 35.0,
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                width: 2.0,
                              )),
                          child: Center(
                            child: Text(
                              (isJoin ? tr("joined") : tr("join")),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          }),
    );
  }
















  Widget body1() {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 0,
        toolbarHeight: 65.0,
        titleSpacing: 0.0,
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient:linearGradient_BrownOrange,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(

                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, .4),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      subMenu(txt: tr("today"), selected: selected1, num: 1),
                      subMenu(txt: tr("monthly"), selected: selected2, num: 2),

                    ],
                  ),
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

            colorSubMenuP = kColorsBlue600;
            colorSubMenu = kColorsBlue600 ;
          }

          if (num == 2) {
            selected1 = false;
            selected2 = true;

            colorSubMenuP = kColorsAmber;
            colorSubMenu = kColorsAmber;
          }

               });
      },
      child: Container(
        width: MediaQuery.of(context).size.width*0.5-20.0 ,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: selected ? kContentColorLightTheme : kTraparentColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Text(
            txt,
            style: TextStyle(
                fontSize: size14,
                color: selected ? kLetterColorDarkTheme: kLetterColorLightTheme,
                fontWeight: FontWeight.bold),
          ),
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
