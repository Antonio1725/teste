import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/utls/Colors.dart';
import 'package:talk_talk/widgets/bottomNavigationBarAux.dart';
import 'package:talk_talk/widgets/fiveLinksPages.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 0,
        leading: Container(),
        title: const FiveLinksPages(
          popularTxtColor: Colors.black,
          selected: true,
        ),


      ),
      backgroundColor: Colors.white,
      body: Text(tr("home")),
      bottomNavigationBar:const BottomNavigationBarAux(
        homeColor: kColorsAmber,
      ),
    );
  }
}
