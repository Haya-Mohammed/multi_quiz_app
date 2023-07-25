import 'package:flutter/material.dart';
import 'package:multi_quiz_app/pages/home_page.dart';
import 'package:multi_quiz_app/pages/mcq_page.dart';
import 'package:multi_quiz_app/pages/tf_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Multi-quiz App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/level1': (context) => const TFPage(),
        '/level2': (context) => const MCQPage(),

        // 'screen10': (context) => const TFDescPage(),
        // 'screen20': (context) => const MCQDescPage(),
        // 'screen11': (context) => const TFPage(),
        // 'screen21': (context) => const MCQPage(),
      },
    );
  }
}
