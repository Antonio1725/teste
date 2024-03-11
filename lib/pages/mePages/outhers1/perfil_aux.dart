import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/models/SimpleUser.dart';
import 'package:talk_talk/pages/mePages/perfil.dart';
import 'package:talk_talk/utls/Colors.dart';
import 'package:talk_talk/utls/sizes.dart';

class PerfilAux extends StatefulWidget {
  String title = "Teste";
  int pos = 0;
  bool? visitors = false;
  bool? following = false;
  bool? followers = false;
  bool? friends = false;

  PerfilAux(
      {Key? key,
      required this.title,
      required this.pos,
      this.visitors,
      this.following,
      this.followers,
      this.friends})
      : super(key: key);

  @override
  State<PerfilAux> createState() => _PerfilAuxState();
}

class _PerfilAuxState extends State<PerfilAux> {
  late PageController pageController;
  late int v;
  late int f;
  late int ff;
  late int fr;
  late bool isFollowed;

  void changeContainerCenter(int pos) {
    setState(() {
      if (pos == 0) {
        widget.visitors = true;
        widget.following = false;
        widget.followers = false;
        widget.friends = false;
        widget.title = "${tr("visitors")}($v)";
      }
      if (pos == 1) {
        widget.visitors = false;
        widget.following = true;
        widget.followers = false;
        widget.friends = false;
        widget.friends = false;
        widget.title = "${tr("following")}($f)";
      }
      if (pos == 2) {
        widget.visitors = false;
        widget.following = false;
        widget.followers = true;
        widget.friends = false;
        widget.friends = false;
        widget.title = "${tr("followers")}($ff)";
      }
      if (pos == 3) {
        widget.visitors = false;
        widget.following = false;
        widget.followers = false;
        widget.friends = true;
        widget.title = "${tr("friends")}($fr)";
      }
    });
  }

  @override
  void initState() {
    super.initState();
    v = SimpleUser.user.visitors?.length ?? 0;
    f = SimpleUser.user.following?.length ?? 0;
    ff = SimpleUser.user.followers?.length ?? 0;
    fr = SimpleUser.user.friends?.length ?? 0;
    pageController = PageController(initialPage: widget.pos);
    changeContainerCenter(widget.pos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: kContentColorLightTheme,
              size: size24,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(fontSize: size16, fontWeight: FontWeight.bold),
        ),
      ),
      body: body(),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 5.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.height,
            height: 30.0,
            child: Padding(
              padding: const EdgeInsets.only(right: 5.0, left: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  selectTitle(tr("visitors"), widget.visitors!, 0),
                  Icon(
                    Icons.star_sharp,
                    color: kContentColorDarkTheme,
                    size: size16,
                  ),
                  selectTitle(tr("following"), widget.following!, 1),
                  Icon(
                    Icons.star_sharp,
                    color: kContentColorDarkTheme,
                    size: size16,
                  ),
                  selectTitle(tr("followers"), widget.followers!, 2),
                  Icon(
                    Icons.star_sharp,
                    color: kContentColorDarkTheme,
                    size: size16,
                  ),
                  selectTitle(tr("friends"), widget.friends!, 3),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
            child: PageView(
              onPageChanged: (pos) {
                changeContainerCenter(pos);
              },
              controller: pageController,
              children: [
                containerCenter(list: SimpleUser.user.visitors!),
                containerCenter(list: SimpleUser.user.following!),
                containerCenter(list: SimpleUser.user.followers!),
                containerCenter(list: SimpleUser.user.friends!),
              ],
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }

  Widget containerCenter({required List list}) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: ListView.builder(
          itemCount: list.length ?? 0,
          itemBuilder: (context, index) {
            if (list.isEmpty) {
              return const Text("Nenhuma Informação Encontrada");
            } else {
              if (true) {
                isFollowed = list[index].state;
              }
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Perfil(id:"123454" , )));
                },
                child: Container(
                  padding: const EdgeInsets.only(left: 5.0,top: 10.0,bottom: 10.0, right: 5.0),
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
                              (isFollowed! ? tr("following") : tr("follow")),
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
            color: select ? kLetterColorLightTheme : kColorsGrey),
      ),
    );
  }
}
