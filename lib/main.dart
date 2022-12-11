import 'package:flutter/material.dart';
import 'package:learnflutter/pages/home_screen.dart';
import 'package:learnflutter/pages/log_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      initialRoute: '/login',
      routes: {
        '/home': (context) => const HomePage(),
        '/login': (context) => const LogInScreen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
