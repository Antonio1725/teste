import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:talk_talk/config/app_config.dart';

import 'package:talk_talk/pages/homePages/popular.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
      EasyLocalization(
          supportedLocales: AppConfig.languages,
          path: 'assets/translations', // <-- change the path of the translation files
          fallbackLocale: AppConfig.defaultLanguage,
          child:const MyApp(),
      ),

  );}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home:const  Popular(),
    );
  }
}
