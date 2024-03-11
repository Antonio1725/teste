import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:talk_talk/models/SimpleUser.dart';
import 'package:talk_talk/utls/Colors.dart';
import 'package:talk_talk/utls/sizes.dart';
import 'package:talk_talk/widgets/messageAux.dart';
import 'package:talk_talk/widgets/showModalBottomSheetAux.dart';

class PerfilUser extends StatefulWidget {
  String name;
  String id;
  String img;


  PerfilUser(
      {Key? key, required this.name, required this.id, required this.img})
      : super(key: key);

  @override
  State<PerfilUser> createState() => _PerfilUserState();
}

class _PerfilUserState extends State<PerfilUser> {
  bool visibleKeyBoard = false;



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
      extendBodyBehindAppBar: true,
      extendBody: true,
      resizeToAvoidBottomInset: false,
      floatingActionButton: Icon(
        Icons.local_fire_department_sharp,
        color: kColorsGrey100,
        size: size50,
      ),
      appBar: AppBar(
        leadingWidth: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(widget.img),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                          color: kColorsGrey100,
                          fontSize: size12,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.id,
                      style: TextStyle(
                        color: kColorsGrey100,
                        fontSize: size12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.shopping_bag_outlined,
                  color: kColorsGrey100,
                  size: size22,
                ),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.settings_backup_restore_outlined,
                  color: kColorsGrey100,
                  size: size22,
                ),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.outbond_outlined,
                  color: kColorsGrey100,
                  size: size22,
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0,
      ),
      body: body(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShowModalBottomSheetAux(
              icon: elementsBottonNavigator(
                icon: Icons.menu,
              ),
              body: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  color: kContentColorLightTheme,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          tr("entertaiment_tools"),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kLetterColorDarkTheme,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      margin: const EdgeInsets.only(bottom: 20.0),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: kColorsGrey100))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          iconTextAux(
                              icon: Icons.back_hand_rounded,
                              txt: tr("roshambo"),
                              iconColor: kColorsAmber,
                              letterColor: kColorsGrey),
                          iconTextAux(
                              icon: Icons.sentiment_very_dissatisfied,
                              txt: tr("lucky_number"),
                              iconColor: kColorsAmber,
                              letterColor: kColorsGrey),
                          iconTextAux(
                              icon: Icons.domain_add_outlined,
                              txt: tr("dice"),
                              iconColor: kColorsAmber,
                              letterColor: kColorsGrey),
                          iconTextAux(
                              icon: Icons.access_time_filled,
                              txt: tr("lucky_packet"),
                              iconColor: kColorsAmber,
                              letterColor: kColorsGrey),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          tr("other_tools"),
                          style:const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kLetterColorDarkTheme,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        iconTextAux(
                            icon: Icons.video_library_outlined,
                            txt: tr("send_picture"),
                            iconColor: kLetterColorDarkTheme,
                            letterColor: kColorsGrey),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            iconTextAux(
                                icon: Icons.star_border,
                                txt: tr("room_effects"),
                                iconColor: kLetterColorDarkTheme,
                                letterColor: kColorsGrey),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Switch(
                              value: true,
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            iconTextAux(
                                icon: Icons.surround_sound,
                                txt: tr("mude_button"),
                                iconColor: kLetterColorDarkTheme,
                                letterColor: kColorsGrey),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Switch(
                              value: false,
                              splashRadius: 5.0,
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ShowModalBottomSheetAux(
              icon: Container(
                margin: const EdgeInsets.only(bottom: 2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: visibleKeyBoard
                      ? kContentColorDarkTheme
                      : kTraparentColor,
                ),
                width: visibleKeyBoard
                    ? MediaQuery.of(context).size.width - 140
                    : 100,
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: visibleKeyBoard
                        ? MediaQuery.of(context).viewInsets.bottom
                        : 1,
                  ),
                  child: TextField(
                    onTap: () {
                      setState(() {
                        visibleKeyBoard = !visibleKeyBoard;
                      });
                    },
                    onSubmitted: (value) {
                      setState(() {
                        visibleKeyBoard = !visibleKeyBoard;
                      });
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.search,
                        color: visibleKeyBoard
                            ? kContentColorLightTheme
                            : kContentColorDarkTheme,
                      ),
                      hintText: "Search ID or Name",
                      hintStyle: TextStyle(
                        color: kContentColorDarkTheme,
                        fontSize: size12,
                      ),
                      labelStyle: const TextStyle(
                        color: kContentColorDarkTheme,
                      ),
                    ),
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: kLetterColorLightTheme,
                        fontSize: size14,
                        backgroundColor: kTraparentColor),
                  ),
                ),
              ),
              body: Container(),
            ),
            ShowModalBottomSheetAux(
              icon: elementsBottonNavigator(
                icon: Icons.message,
              ),
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      tr("message"),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.only(right: 20.0,left: 20.0),
                    decoration: BoxDecoration(
                      color: kContentColorDarkTheme,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const MessageAux(),
                  ),
                ],
              ),
            ),
            ShowModalBottomSheetAux(
              icon: elementsBottonNavigator(
                icon: Icons.emoji_emotions_outlined,
              ),
              body: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          selectTitle1(tr("recent"), hot, 0),
                          const  SizedBox(width: 20.0,),
                          selectTitle1(tr("basic"),  niw, 1),
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
                           Text("Recentes"),
                            Text("Emojis"),
                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
            ShowModalBottomSheetAux(
              icon: elementsBottonNavigator(
                icon: Icons.games,
              ),
              body: Container(),
            ),
            ShowModalBottomSheetAux(
              icon: elementsBottonNavigator(
                icon: Icons.add,
              ),
              body: Container(),
            ),
          ],
        ),
      ),
    );
  }

  Widget iconTextAux(
      {required IconData icon,
      required String txt,
      required Color iconColor,
      required Color letterColor}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: size30,
          color: iconColor,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          txt,
          style: TextStyle(
            color: letterColor,
          ),
        ),
      ],
    );
  }

  Widget elementsBottonNavigator({IconData? icon}) {
    return Icon(
      icon,
      color: kContentColorDarkTheme,
    );
  }

  Widget body() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/imagesAux/leao.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100.0,
            ),
            Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 65.0,
                      height: 65.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/imagesGIF/fogo.gif"),
                        ),
                      ),
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        image: DecorationImage(
                          image: AssetImage(SimpleUser.user.friends![1].image!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: const BoxDecoration(
                      color: kColorsAmber,
                    ),
                    child: Text(
    SimpleUser.user.friends![1].userName,
                      style: TextStyle(
                          color: kColorsGrey100,
                          fontSize: size12,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            Expanded(
              child: GridView.builder(
                itemCount:SimpleUser.user.friends!.length,
                padding: const EdgeInsets.only(bottom: 0.0, top: 5.0),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 58.0,
                            height: 58.0,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/imagesGIF/efeitoImage.gif"),
                              ),
                            ),
                          ),
                          Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              image: DecorationImage(
                                image: AssetImage(
                                  SimpleUser.user.friends![index].image!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                      SimpleUser.user.friends![index].userName,
                        style: const TextStyle(
                          color: kColorsGrey100,
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5, // Número de colunas
                  mainAxisSpacing: 10, // Espaçamento entre as linhas
                  crossAxisSpacing: 0, // Espaçamento entre as colunas
                ),
              ),
            ),
          ],
        ),
      ],
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
                  fontSize:  select ?size20 : size16,
                  fontWeight: FontWeight.bold,
                  color: select ? kLetterColorLightTheme : kLetterColorDarkTheme),
            ),
          ),

        ],
      ),
    );
  }



}
