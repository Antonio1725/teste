
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main()=>runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Emma(),

    )
);

class Emma extends StatefulWidget {
  const Emma({Key? key}) : super(key: key);

  @override
  State<Emma> createState() => _HomePageState();
}

class _HomePageState extends State<Emma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body:Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 450,
                  backgroundColor: Colors.black,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    background: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image:AssetImage('assets/images/img1.jpg'),
                            fit: BoxFit.cover,
                          )
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.black,
                                    Colors.black.withOpacity(.3)
                                  ]
                              )
                          ),
                          child:Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Emma Watson",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold, fontSize: 40)).animate().fade(),

                                SizedBox(height: 20,),
                                Row(
                                  children: [

                                    Text("60 Videos", style: TextStyle(color:Colors.grey,fontSize: 16),).animate().fade().scale(),
                                    SizedBox(width: 50,),
                                    Text("240k Subscribers", style:TextStyle(color: Colors.grey,fontSize:16 )).animate().fade(), // baseline=800ms.slide()
                                  ],
                                ),

                              ],
                            ),
                          )
                      ),
                    ),
                  ),
                ),

                SliverList(
                    delegate: SliverChildListDelegate([
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text("El comandante de la sexta división comunicó que al amanecer el nuevo día había que ocupar Novogrado-Volynsk. El estado mayor abandonó Krapivno, y nuestro convoy, con gran estruendo, quedó como retaguardia a lo largo de la carretera, de aquella indestructible carretera que va de Brest",
                                style:TextStyle(color: Colors.grey,height: 1.4)),
                            SizedBox(height: 40,),
                            Text("Born",style: TextStyle(color:Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),).animate().blurY(),
                            SizedBox(height: 10,),
                            Text("April, 15th 1990",style: TextStyle(color:Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),).animate().blurY(),
                            SizedBox(height: 20,),
                            Text("Nationality", style: TextStyle(color:Colors.white, fontSize: 18, fontWeight: FontWeight.bold),).animate().blurX(),
                            SizedBox(height: 10,),
                            Text("British", style: TextStyle(color:Colors.deepPurple,fontSize: 16),),
                            Container(
                              height: 200,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  makeVideo(image:'assets/images/img2.jpg'),
                                  makeVideo(image:'assets/images/img3.jpg'),
                                  makeVideo(image:'assets/images/img4.jpg'),
                                ],
                              ),

                            ).animate().fade(duration:Duration(seconds: 10),curve:Curves.linear),

                            SizedBox(height: 120,)
                          ],
                        ),
                      )
                    ]))
              ],
            ),
            Positioned.fill(
              bottom: 50,
              child: Container(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 120),
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow[700],
                    ),
                    child: Align(child: Text("Follow", style:TextStyle(color: Colors.white)),),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }

  Widget makeVideo({image}){
    return AspectRatio(
      aspectRatio: 1.5/1,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image:AssetImage(image),
              fit: BoxFit.cover,
            )
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.3),
                ]
            ),
          ),
          child: Align(
            child: Icon(Icons.play_arrow, color: Colors.white,size: 70,),
          ),
        ),
      ),
    );
  }
}