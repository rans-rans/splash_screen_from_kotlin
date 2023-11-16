import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Splash Screen',
      home: const Homepage(),
      theme: ThemeData(useMaterial3: true),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SPLASH")),
      body: const Center(
        child: Text(
          "SPLASH SCREEN",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
