import 'package:flutter/material.dart';



class BottonBlueRed extends StatefulWidget {

  final String txt;
  const BottonBlueRed({super.key, required this.txt});

  @override
  State<BottonBlueRed> createState() => _BottonBlueRedState();
}

class _BottonBlueRedState extends State<BottonBlueRed> {
  @override
  Widget build(BuildContext context) {
    return   Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(30.0),
      height: 40.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.blue,
              Colors.pink,
            ]),
      ),
      child:Center(
          child: Text(
           widget.txt,
            style:
           const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          )),
    );
  }
}
