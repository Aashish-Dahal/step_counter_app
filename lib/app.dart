import 'package:flutter/material.dart'
    show
        BuildContext,
        ColorScheme,
        Colors,
        MaterialApp,
        StatelessWidget,
        ThemeData,
        Widget;
import 'package:step_counter_app/pages/home/home_page.dart' show HomePage;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Step Counter Application',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
