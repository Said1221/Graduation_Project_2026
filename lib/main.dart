import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project_2026/home_layout.dart';
import 'package:graduation_project_2026/view/login_screen.dart';
import 'package:graduation_project_2026/view/register_screen.dart';

void main() {
  //runApp(const MyApp());
  runApp(
    DevicePreview(
      enabled: true,
      tools: [...DevicePreview.defaultTools],
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: loginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

