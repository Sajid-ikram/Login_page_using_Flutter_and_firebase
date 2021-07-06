import 'package:flutter/material.dart';
import 'pages/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gaw Gram',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SignIn(),
    );
  }
}
