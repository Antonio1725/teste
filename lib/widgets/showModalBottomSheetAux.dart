import 'package:flutter/material.dart';
import 'package:talk_talk/utls/Colors.dart';

class ShowModalBottomSheetAux extends StatelessWidget {

  final Widget icon;
  final Widget body;



  const  ShowModalBottomSheetAux({super.key,required this.icon,required this.body, });

  @override
  Widget  build(BuildContext context) {
    return GestureDetector(
      onTap:(){

        showModalBottomSheet(
            context: context,
            builder: (context) {
              return body;
            }
        );


      },
      child:icon,
    );
  }
}
