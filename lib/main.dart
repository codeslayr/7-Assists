import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:seven_assists/views/parent_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCTk01Tc3R6Z5xyk6mM7JgZAxNzk2tC8OU",
      authDomain: "assists-c2df1.firebaseapp.com",
      projectId: "assists-c2df1",
      storageBucket: "assists-c2df1.appspot.com",
      messagingSenderId: "482488653665",
      appId: "1:482488653665:web:e161d7476d240fbcff9720",
    ),
  );
  runApp(MyApp());
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
