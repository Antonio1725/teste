import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/utls/sizes.dart';

class Aristocracy extends StatefulWidget {
  const Aristocracy({super.key});

  @override
  State<Aristocracy> createState() => _AristocracyState();
}

class _AristocracyState extends State<Aristocracy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr("aristocracy"),style: TextStyle(fontSize:size16,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey,


    );
  }
}
