import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/pages/mensagePage/FamilyCenter.dart';
import 'package:talk_talk/pages/mensagePage/System.dart';
import 'package:talk_talk/pages/mensagePage/TalkTalkTeam.dart';
import 'package:talk_talk/utls/sizes.dart';

class MessageAux extends StatelessWidget {
  const MessageAux({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 8,),
        containeirColorIcone(
            Icons.messenger,
            Colors.yellow,
            tr("talk_team"),
            "5",
            true,
                (context)=>const TalkTalkTeam(),
          context

        ),
        containeirColorIcone(
            Icons.notifications,
            Colors.pink,
            tr("system"),
            "10",
            true,
                (context)=>const System(),
          context
        ),
        containeirColorIcone(
            Icons.home,
            Colors.blueAccent,
            tr("family_center"),
            "0",
            false,
                (context)=>const FamilyCenter(),
          context
        ),
        const SizedBox(width: 8,),
      ],
    );
  }



  Widget containeirColorIcone(IconData icon, Color color, String text,
      String txtNoticaticion, bool bg, builder,BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: builder));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: SizeIconBody,
                ),
              ),
              Container(
                child: bg == true
                    ? Container(

                  width: 20.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    txtNoticaticion,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
                    : Container(),
              ),
            ],
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.grey,
              fontSize: size12,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

}
