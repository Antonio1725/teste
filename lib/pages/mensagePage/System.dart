import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/utls/sizes.dart';


class System extends StatefulWidget {
  const System({super.key});

  @override
  State<System> createState() => _SystemState();
}

class _SystemState extends State<System> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leadingWidth: 100.0,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.black,
                  size: size24,
                ),
              ),
            ],
          ),
        ),
        title: Text(
          tr("system"),
          style: TextStyle(fontSize: size16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              Icons.clear,
              color: Colors.black,
              size: size24,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey,

    );
  }
}

