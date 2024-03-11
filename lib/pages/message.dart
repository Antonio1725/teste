import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/config/app_config.dart';
import 'package:talk_talk/pages/mensagePage//Friends.dart';
import 'package:talk_talk/utls/Colors.dart';
import 'package:talk_talk/utls/GradientColor.dart';
import 'package:talk_talk/utls/sizes.dart';
import 'package:talk_talk/widgets/bottomNavigationBarAux.dart';
import 'package:talk_talk/widgets/messageAux.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        leadingWidth: 0,
        leading: Container(),
        toolbarHeight: 150,
        titleSpacing: 0,
        title: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius:const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                gradient: LinearGradient(
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight,
                    colors: gBluePurple,
                    stops: const [
                      0.5,
                      0.9,
                    ]),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tr("message"),
                    style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.bed,
                        size: SizeIconNaviBar,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const  Friends() )   );
                        }
                        ,


                        child: Icon(
                          Icons.group,
                          size: SizeIconNaviBar,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              height: 100.0,
              width: 320.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppConfig.appName,
                    style: const TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white60,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(10),
            height: 100.0,
            width: 320.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const MessageAux(),

          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigationBarAux(
        messageColor: kColorsAmber,
      ),
    );
  }

  Widget containeirColorIcone(IconData icon, Color color, String text,
      String txtNoticaticion, bool bg, builder) {
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
              fontSize: STextBody,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
