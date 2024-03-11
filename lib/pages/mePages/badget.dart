import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/utls/sizes.dart';


class Badget extends StatefulWidget {
  const Badget({super.key});

  @override
  State<Badget> createState() => _BadgetState();
}

class _BadgetState extends State<Badget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr("badget"),style: TextStyle(fontSize:size16,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey,


    );
  }
}
