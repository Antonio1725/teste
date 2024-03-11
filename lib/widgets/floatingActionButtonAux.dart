import 'package:flutter/material.dart';
import 'package:talk_talk/pages/homePages/taskCenter.dart';
import 'package:talk_talk/utls/Colors.dart';


import '../pages/me.dart';

class FloatingActionButtonAux extends StatelessWidget {


  const FloatingActionButtonAux(
      {Key? key,
     })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(
        Icons.add,
        color: kContentColorDarkTheme,
      ),
      backgroundColor: kColorsAmber,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const TaskCenter()));
      },
    );
  }


  }

