import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/models/SimpleUser.dart';
import 'package:talk_talk/pages/mePages/perfil.dart';
import 'package:talk_talk/pages/mensagePage/FriendsContacts.dart';
import 'package:talk_talk/utls/Colors.dart';
import 'package:talk_talk/utls/sizes.dart';
import 'package:talk_talk/widgets/iconTexticon.dart';

class Friends extends StatefulWidget {
  const Friends({super.key});

  @override
  State<Friends> createState() => _FriendsState();

}

class _FriendsState extends State<Friends> {

   bool isFollowed=false;
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
            ],
          ),
        ),
        title: Text(
          tr("friends"),
          style: TextStyle(fontSize: size16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
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
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              color: kContentColorDarkTheme,
            ),
            child: IconTextIcon(
                txt: tr("contacts_friends"),
                icon: Icons.contact_phone_sharp,
                colorIcon: kColorsGreen,
                builder:(context)=>const  FriendsContacts()),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  tr("recommended_you"),
                  style:
                      TextStyle(fontSize: size16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          containerCenter(list: SimpleUser.user.friends!),
        ],
      ),
    );
  }

  Widget containerCenter({required List list}) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: ListView.builder(
          itemCount: list.length,
          shrinkWrap: true,
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
                              (isFollowed ? tr("following") : tr("follow")),
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
}
