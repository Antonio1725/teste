import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/utls/sizes.dart';

class TalkTalkTeam extends StatefulWidget {
  const TalkTalkTeam({super.key});

  @override
  State<TalkTalkTeam> createState() => _TalkTalkTeamState();
}

class _TalkTalkTeamState extends State<TalkTalkTeam> {
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
          "TalkTalk Team",
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
      body: body(),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(height: 10.0),
            boxDialog(
                txt:
                    "Um cidadão fez voto de desapego e pobreza. Dispôs de todos os seus bens e propriedades, reservou para si apenas duas tangas, e saiu pelo mundo afora em busca de todos os sábios, medindo na verdade o desapego de cada um. Levava apenas uma tanga no corpo.",
                txtTime: "12-18 22:33"),
            boxDialog(
                txt:
                    "Achando tudo muito estranho, o desapegado aceita a sugestão. Toma um bom banho, lava sua tanga usada, coloca-a para secar no quarto e sai em busca do guru.",
                txtTime: "13-18 22:33"),
            boxDialog(
                txt:
                    "Mestre, mestre, o palácio está pegando fogo, um incêndio tomou conta de tudo. O senhor está perdendo uma fortuna! O sábio, ",
                txtTime: "12-18 10:33"),
            boxDialog(txt: "Capeculo Eduardo", txtTime: "12-18 19:33"),
          ],
        ),
      ),
    );
  }

  Widget boxDialog({required String txt, required String txtTime}) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Icon(
                  Icons.message,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 5.0,
          ),
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        txt,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 100.0,
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
                          child: Center(
                            child: Text(
                              tr("go"),
                              style:const  TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(txtTime),
            ],
          ),
        ],
      ),
    );
  }
}
