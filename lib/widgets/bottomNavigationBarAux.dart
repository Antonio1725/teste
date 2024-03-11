import 'dart:ffi';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/pages/homePages/popular.dart';
import 'package:talk_talk/pages/matching.dart';
import 'package:talk_talk/pages/message.dart';
import 'package:talk_talk/utls/Colors.dart';
import 'package:talk_talk/utls/sizes.dart';

import '../pages/me.dart';

class BottomNavigationBarAux extends StatelessWidget {
  final Color? homeColor;
  final Color? matchingColor;
  final Color? messageColor;
  final Color? meColor;

  const BottomNavigationBarAux(
      {Key? key,
      this.homeColor,
      this.matchingColor,
      this.messageColor,
      this.meColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
         padding: const EdgeInsets.only(top: 5.0,bottom: 5.0,right: 15.0,left: 15.0),
         decoration: const BoxDecoration(
           color: Colors.white,
           boxShadow: [
             BoxShadow(
               color: Colors.black,
               blurRadius: 15,
               offset: Offset(0, 10),
             ),
           ]
         ),
        height: 60.00,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            bottomNavibarIconText(
              icon: Icons.account_balance,
              text: tr("home") ,
              txtColor: homeColor ?? kColorsAmber,
              txtFontWeight: homeColor  !=null ? FontWeight.bold:FontWeight.normal,
              txtCFontSize: homeColor,
              context: context,
              route: MaterialPageRoute(builder: (context) => const Popular()),
            ),
            bottomNavibarIconText(
              icon: Icons.sports_volleyball,
              text: tr("matching"),
              txtColor: matchingColor ?? kColorsAmber,
              txtFontWeight: matchingColor !=null ?FontWeight.bold:FontWeight.normal,
              txtCFontSize: matchingColor,
              context: context,
              route: MaterialPageRoute(builder: (context) => const Matching()),
            ),
            bottomNavibarIconText(
              icon: Icons.message,
              text: tr("message"),
              txtColor: messageColor ??kColorsAmber,
              txtFontWeight: messageColor !=null ?FontWeight.bold:FontWeight.normal,
              txtCFontSize: messageColor,
              context: context,
              route: MaterialPageRoute(builder: (context) => const Message()),
            ),
            bottomNavibarIconText(
              icon: Icons.diamond,
              text: tr("me"),
              txtColor: meColor ?? kColorsAmber,
              txtFontWeight: meColor !=null ? FontWeight.bold:FontWeight.normal,
              txtCFontSize: meColor,
              context: context,
              route: MaterialPageRoute(builder: (context) => const Me()),

            ),
          ],
        ),
      ),
    );
  }

  Widget bottomNavibarIconText(
      {required IconData icon,
      required String text,
      required Color txtColor,
      required FontWeight txtFontWeight,
        Color? txtCFontSize,
      required BuildContext context,
      required Route route}) {
    return GestureDetector(
      onTap: () {

        Navigator.push(context, route);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            icon,
            size: SizeIconNaviBar,
            color: kColorsAmber,
          ),
          const SizedBox(height: 3),
          Text(
            text,
            style: TextStyle(color: txtColor,
                fontSize: txtCFontSize!=null ? size14:size12,
                fontWeight: txtFontWeight,),
          )
        ],
      ),
    );
  }
}
