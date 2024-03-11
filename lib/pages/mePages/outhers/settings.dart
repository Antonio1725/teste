import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/utls/sizes.dart';
import 'package:talk_talk/widgets/iconTexticon.dart';
import 'package:talk_talk/widgets/lineHorizontal.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          tr("settings"),
          style: TextStyle(fontSize: size16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(child: body()),
    );
  }

  Widget body() {
    return Column(
      children: [
        const SizedBox(
          height: 5.0,
        ),
        Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
          padding: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
          ),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconTextIcon(
                    txt: tr("only_message"),
                    builder: (context) => const Settings(),
                    elementicon: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Switch(
                          value: isOn,
                          activeColor: Colors.blue,
                          onChanged: (value) {
                            setState(() {
                              isOn = value;
                            });
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const LineHorizontal(),
              IconTextIcon(
                txt: tr("match_switch"),
                icon: Icons.message,
                builder: (context) => const Settings(),
              ),
              const LineHorizontal(),
              IconTextIcon(
                txt: tr("account_management"),
                icon: Icons.person_remove_alt_1,
                builder: (context) => const Settings(),
              ),
              const LineHorizontal(),
              IconTextIcon(
                txt: tr("language"),
                icon: Icons.wb_cloudy_outlined,
                builder: (context) => const Settings(),
              ),
              const LineHorizontal(),
              IconTextIcon(
                txt: tr("blocked_list"),
                icon: Icons.person_off_sharp,
                builder: (context) => const Settings(),
              ),
              const LineHorizontal(),
              IconTextIcon(
                txt: tr("clear_cache"),
                icon: Icons.cleaning_services_sharp,
                builder: (context) => const Settings(),
              ),
              Container(
                height: 5.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.signpost,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        tr("sign_out"),
                        style: TextStyle(fontSize: size16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

}
