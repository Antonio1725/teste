import 'package:flutter/material.dart';
import 'package:talk_talk/utls/Colors.dart';

class IconTextIcon extends StatelessWidget {
  final String txt;
  final IconData? icon;
  final Color? colorIcon;
  final Widget? elementicon;
  final builder;

  const IconTextIcon(
      {super.key,
      required this.txt,
      this.icon,
      this.colorIcon,
      required this.builder,
      this.elementicon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: builder));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  child: icon != null
                      ? Icon(
                          icon,
                    color: colorIcon ?? kContentColorLightTheme ,
                        )
                      : Container(),
                ),
                SizedBox(
                  width: icon != null ? 10 : 0.0,
                ),
                Text(
                  txt,
                )
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
               SizedBox(
                  child: elementicon ?? const Icon(
                          Icons.arrow_forward_ios,
                        ),
                ),
              ],
            )


          ],
        ),
      ),
    );
  }
}
