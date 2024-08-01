import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:seven_assists/views/parent_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyDHrrz9WnvIuXnCOGz5MXcKj6GCAZEJMfs",
        authDomain: "assists-7b21f.firebaseapp.com",
        projectId: "assists-7b21f",
        storageBucket: "assists-7b21f.appspot.com",
        messagingSenderId: "807661337630",
        appId: "1:807661337630:web:fd4cac3c60c74075cc820f"),
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
