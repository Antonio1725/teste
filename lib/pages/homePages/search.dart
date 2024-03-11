import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/utls/Colors.dart';
import 'package:talk_talk/utls/sizes.dart';


class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {



  PageController pageController = PageController(initialPage: 0);
  bool recentlyLogic = true;
  bool joinedLogic = false;
  bool followingLogic = false;

  changeContainerCenter(int pos) {
    setState(() {
      if (pos == 0) {
        recentlyLogic = true;
        joinedLogic = false;
        followingLogic = false;
      }
      if (pos == 1) {
        recentlyLogic = false;
        joinedLogic = true;
        followingLogic = false;
      }
      if (pos == 2) {
        recentlyLogic = false;
        joinedLogic = false;
        followingLogic = true;
      }
    });
  }















  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      backgroundColor: Colors.grey,
      body: body(),
    );
  }

 Widget body(){
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 60.0,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.pink,
                  Colors.blue,
                ],
              ),
            ),

            child:  Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios_outlined,size: size18,color: kContentColorLightTheme,),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5 +50.0,
                    height: 40.0,

                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        icon: const Icon(Icons.search,size: 24.0,color: kContentColorLightTheme,),
                        hintText: tr("search_name"),
                        hintStyle: const TextStyle(color: kContentColorLightTheme,fontSize: 14.0,),

                        labelStyle: const TextStyle(color:kContentColorDarkTheme,),



                      ),
                      textAlign: TextAlign.start ,
                      style: const TextStyle(color: Colors.black,fontSize: 25.0,),

                    )
                    ,
                  ),
                  Text(tr("search"),style: const TextStyle(color: Colors.white,fontSize: 14.0),),
                ],
              ),
            ),
          ),

          Container(
            width: MediaQuery.of(context).size.width,
            height: 40.0,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding:const  EdgeInsets.only(left: 20.0,right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  selectTitle(tr("room"), recentlyLogic, 0),
                  Icon(
                    Icons.star_sharp,
                    color: kContentColorDarkTheme,
                    size: size16,
                  ),
                  selectTitle(tr("user"), joinedLogic, 1),
                  Icon(
                    Icons.star_sharp,
                    color: kContentColorDarkTheme,
                    size: size16,
                  ),
                  selectTitle(tr("family"), followingLogic, 2),

                ],
              ),
            ),
          ) ,

          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: PageView(
              onPageChanged: (pos) {
                changeContainerCenter(pos);
              },
              controller: pageController,
              children: [
                containerCenter(1),
                containerCenter(2),
                containerCenter(3),
              ],
            ),
          ),



        ],
      ),
    );
 }

  Widget containerCenter(int num) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.account_tree,
            size: 200.0,
            color: Colors.blue,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text("No Results $num"),
        ],
      ),
    );
  }





  Widget selectTitle(String text, bool select, int pos) {
    return GestureDetector(
      onTap: () {
        setState(() {
          pageController.jumpToPage(pos);
        });
        changeContainerCenter(pos);
      },
      child: Text(
        text,
        style: TextStyle(
            fontSize: size16,
            fontWeight: FontWeight.bold,
            color: select ? kLetterColorLightTheme : kLetterColorDarkTheme),
      ),
    );
  }






}











