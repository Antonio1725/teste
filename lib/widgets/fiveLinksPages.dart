import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/pages/homePages/explore.dart';
import 'package:talk_talk/pages/homePages/ranking.dart';
import 'package:talk_talk/pages/homePages/related.dart';
import 'package:talk_talk/pages/homePages/search.dart';
import 'package:talk_talk/utls/Colors.dart';
import 'package:talk_talk/utls/sizes.dart';
import 'package:talk_talk/widgets/callSubPages.dart';

import '../pages/homePages/popular.dart';

class FiveLinksPages extends StatelessWidget {
  final Color? relatedTxtColor;
  final Color? popularTxtColor;
  final Color? exploreTxtColor;
  final Color? headPhoneColor;
  final Color? searchColor;
  final bool selected;

  const FiveLinksPages(
      {Key? key,
      this.relatedTxtColor,
      this.popularTxtColor,
      this.exploreTxtColor,
      this.headPhoneColor,
      this.searchColor,
       this.selected = false,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CallSubPages(
            route: MaterialPageRoute(builder: (context) => const Related()),
            widget: Text(
              tr("related"),
              style: TextStyle(
                color: relatedTxtColor ?? kLetterColorDarkTheme,
                fontSize:
                    selected == true ? size16 : size10,
                fontWeight:
                    selected == true ? FontWeight.bold : FontWeight.w100,
              ),
            ),
          ),
          CallSubPages(
            route: MaterialPageRoute(builder: (context) => const Popular()),
            widget: Text(
              tr("popular"),
              style: TextStyle(
                color: popularTxtColor ?? kLetterColorDarkTheme,
                fontSize:
                    selected == true ? size16 : size10,
                fontWeight:
                    selected == true ? FontWeight.bold : FontWeight.w100,
              ),
            ),
          ),
          CallSubPages(
            route: MaterialPageRoute(builder: (context) => const Explore()),
            widget: Text(
              tr("explore"),
              style: TextStyle(
                color: exploreTxtColor ?? kLetterColorDarkTheme,
                fontSize:
                    selected == true ?  size16 : size10,
                fontWeight:
                    selected == true ? FontWeight.bold : FontWeight.w100,
              ),
            ),
          ),
          CallSubPages(
            route: MaterialPageRoute(builder: (context) => const Ranking()),
            widget: Icon(
              Icons.rice_bowl_outlined,
              size: SizeIconNaviBar,
              color: kColorsAmber,
            ),
          ),
          CallSubPages(
            route: MaterialPageRoute(builder: (context) => const Search()),
            widget: Icon(
              Icons.search,
              size: SizeIconNaviBar,
              color: headPhoneColor ??kContentColorDarkTheme,
            ),
          ),
          CallSubPages(
            route: MaterialPageRoute(builder: (context) => const Related()),
            widget: Icon(
              Icons.headset_mic_rounded,
              size: SizeIconNaviBar,
              color: searchColor ?? kContentColorDarkTheme,
            ),
          ),
        ],
      ),
    );
  }
}
