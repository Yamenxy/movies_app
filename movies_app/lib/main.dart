import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App',
      home: Scaffold(
        appBar: AppBar(title: const Text('Movies App')),
        body: const Center(child: Text('Hello Movies')),
      ),
    );
  }
}
