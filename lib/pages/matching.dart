import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/pages/matchingPage/matchSwitch.dart';
import 'package:talk_talk/utls/Colors.dart';
import 'package:talk_talk/utls/sizes.dart';
import 'package:talk_talk/widgets/bottomNavigationBarAux.dart';

class Matching extends StatefulWidget {
  const Matching({Key? key}) : super(key: key);

  @override
  State<Matching> createState() => _MatchingState();
}

class _MatchingState extends State<Matching> {
  bool isVolueUp = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColorsAmber,
        leadingWidth: 0,
        leading: Container(),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tr("matching"),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  tr("always_you"),
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MatchSwitch()),
                        );
                      },
                      child: Icon(
                        Icons.hexagon_sharp,
                        size: SizeIconNaviBar,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isVolueUp = !isVolueUp;
                        });
                      },
                      child: Icon(
                        isVolueUp
                            ? Icons.headset_off_sharp
                            : Icons.headset_mic_sharp,
                        size: SizeIconNaviBar,
                        color: kContentColorLightTheme,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: kColorsAmber,
      body: body(context),
      bottomNavigationBar: const BottomNavigationBarAux(
        matchingColor: kColorsAmber,
      ),
    );
  }
}

Widget body(BuildContext context) {
  return SingleChildScrollView(
    child: Column(

      children: [
        const SizedBox(
          height: 50,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Visibility(

              child: CircleAvatar(
                radius: 25,
                child: Icon(Icons.person,size: 50,),
              ),
            ),

            Visibility(

              child: CircleAvatar(
                radius: 25,
                child: Icon(Icons.person,size: 50,),
              ),
            ),
            Visibility(

              child: CircleAvatar(
                radius: 25,
                child: Icon(Icons.person,size: 50,),
              ),
            ),
          ],
        ),

        const SizedBox(
          height: 50,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                containerAux(
                    context: context,
                    txt: "Party",
                    subTxt: "Chat e Social",
                    icon: Icons.access_alarms,
                    bgColor: kColorsLightBlue),
                containerAux(
                    context: context,
                    txt: "Ludo",
                    subTxt: "Game Room",
                    icon: Icons.access_alarms,
                    bgColor: kColorsAmber900),
                containerAux(
                    context: context,
                    txt: "Voice Chat",
                    subTxt: "0 time left",
                    icon: Icons.access_alarms,
                    bgColor: kColorsGreen900),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                containerAux(
                    context: context,
                    txt: "Soulmate",
                    subTxt: "5 time left",
                    icon: Icons.access_alarms,
                    bgColor: kColorsIndigo900),
                containerAux(
                    context: context,
                    txt: "Friends",
                    subTxt: "Beauties",
                    icon: Icons.access_alarms,
                    bgColor: kColorsOrange800),
                containerAux(
                    context: context,
                    txt: "UMO",
                    subTxt: "",
                    icon: Icons.access_alarms,
                    bgColor: kColorsLime800),
              ],
            ),
            Row(
              children: [
                containerAux(
                    context: context,
                    txt: "Domino",
                    subTxt: "",
                    icon: Icons.access_alarms,
                    bgColor: kColorsPink800),
                containerAux(
                    context: context,
                    txt: "More...",
                    subTxt: "",
                    icon: Icons.access_alarms,
                    bgColor: kColorsRed900),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget containerAux(
    {required BuildContext context,
    required String txt,
    required String subTxt,
    required IconData icon,
    required Color bgColor}) {
  return Container(
    margin: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
    width: MediaQuery.of(context).size.width * 0.30,
    height: 90.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: bgColor,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: size40,
          color: kColorsAmber,
        ),
        Text(
          txt,
          style: TextStyle(
              color: kColorsGrey100,
              fontSize: size16,
              fontWeight: FontWeight.bold),
        ),
        Text(
          subTxt,
          style: TextStyle(
              color: kColorsGrey100,
              fontSize: size12,
              fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
