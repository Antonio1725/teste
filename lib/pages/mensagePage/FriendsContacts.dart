import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/config/app_config.dart';
import 'package:talk_talk/utls/sizes.dart';
import 'package:talk_talk/widgets/bottonBlueRed.dart';


class FriendsContacts extends StatefulWidget {
  const FriendsContacts({super.key});

  @override
  State<FriendsContacts> createState() => _FriendsContactsState();
}

class _FriendsContactsState extends State<FriendsContacts> {
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
          tr("contacts"),
          style: TextStyle(fontSize: size16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey,
      body: body(),
    );
  }


  Widget body(){
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(30.0),
            child: const Center(
              child: Icon(
                Icons.perm_contact_cal_sharp,
                size: 100.0,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20.0,),
          Center(child: Text(tr("no")+AppConfig.appName+"\n" +tr("user_contacts"),style: TextStyle(fontWeight: FontWeight.bold,fontSize: size14),textAlign: TextAlign.center, ) ),
          const SizedBox(height: 20.0,),
          BottonBlueRed(txt:tr("invite_join"),),
        ],
      ),
    );
  }
}
