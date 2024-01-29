import 'package:flutter/material.dart';
import 'package:maldex/responsive_layout/mobile_screens/mobile_homescreen.dart';
import 'package:maldex/responsive_layout/mobile_screens/mobile_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 97, 209, 239)),
        useMaterial3: true,
      ),
      home: MobileLogin(),
    );
  }
}
