import 'package:flutter/material.dart';
import 'package:lovie_lovemovie/src/presentation/pages/home_page/home_page.dart';
import 'dependency_injection.dart' as di;

void main() {
  di.setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LOVIE',
      theme: ThemeData(
        useMaterial3: true
      ),
      home: const HomePage(),
    );
  }
}