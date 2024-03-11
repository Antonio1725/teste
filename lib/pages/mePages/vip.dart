import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/utls/sizes.dart';



class Vip extends StatefulWidget {
  const Vip({super.key});

  @override
  State<Vip> createState() => _VipState();
}

class _VipState extends State<Vip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr("vip"),style: TextStyle(fontSize:size16,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey,


    );
  }
}
