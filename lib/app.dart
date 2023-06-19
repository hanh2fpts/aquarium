import 'package:aquarium/color_constant.dart';
import 'package:flutter/material.dart';

import 'screen/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorConstant.primaryColor),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
