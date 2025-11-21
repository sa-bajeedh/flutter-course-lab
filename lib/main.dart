import 'package:flutter/material.dart';
import 'package:saeed_mahfouz_app/text_field_assignment_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
      ),
      home: TextFieldScreen()
    );
  }
}

