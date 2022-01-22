import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imc/app/ios/pages/home_page.dart';

class IosApp extends StatelessWidget {
  const IosApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'IMC',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
