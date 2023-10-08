import 'package:flutter/material.dart';
import 'package:wisatabandung/detail_screen.dart';
import 'package:wisatabandung/layout_flutter.dart';
import 'package:wisatabandung/main_screen.dart';
import 'package:wisatabandung/navigator_flutter.dart';
import 'package:wisatabandung/responsive_flutter.dart';
import 'package:wisatabandung/scrolling_flutter.dart';
import 'package:wisatabandung/scrolling_builder_flutter.dart';
import 'package:wisatabandung/scrolling_sparated_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Wisata Malang', theme: ThemeData(), home: const MainScreen());
  }
}
