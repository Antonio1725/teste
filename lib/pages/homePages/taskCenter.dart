import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/utls/sizes.dart';

class TaskCenter extends StatefulWidget {
  const TaskCenter({super.key});

  @override
  State<TaskCenter> createState() => _TaskCenterState();
}

class _TaskCenterState extends State<TaskCenter> {
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
          "Task Center",
          style: TextStyle(fontSize: size16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              Icons.update,
              color: Colors.black,
              size: size24,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey,
      body: body(),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: 120.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Center(
              child: Text(
                tr("daily_rewards"),
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 30.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.purple,
                      Colors.blueAccent,
                    ]),
              ),
              child:Center(
                child: Text(
                  tr("become_rewards"),
                  style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        tr("daily_task"),
                        style:TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                rowBox(icon: Icons.message),
                rowBox(icon: Icons.add_call),
                rowBox(icon: Icons.add_a_photo),
                rowBox(icon: Icons.headset),
                rowBox(icon: Icons.message),
                rowBox(icon: Icons.message),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget rowBox({required IconData icon}) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 60.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.grey)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.blue,
                      Colors.pink,
                    ],
                  ),
                ),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: size16,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tr("Send 3 MSGs In Each Room\n (05)"),
                    style: TextStyle(fontSize: size12),
                  ),
                  Text(
                    "300",
                    style: TextStyle(fontSize: size12),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.blue,
                    Colors.pink,
                  ],
                ),
              ),
              child:  SizedBox(
                width: 60.0,
                height: 30.0,
                child: Center(
                  child: Text(
                    tr("go"),
                    style:const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
