import 'package:flutter/material.dart';



class LineHorizontal extends StatelessWidget {

  final Color? color;


  const LineHorizontal({super.key,  this.color});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 1.0,
      width: MediaQuery.of(context).size.width,
      color: color ?? Colors.grey,
    );
  }
}
