import 'package:flutter/material.dart';
import 'package:seven_assists/views/parent_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '7 Assists',
      debugShowCheckedModeBanner: false,
      home: ParentView(),
    );
  }
}
