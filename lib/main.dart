import 'package:flutter/material.dart';
import 'package:flutter_agenda_estilo_twitch/components/home_page/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Agenda | lfdel24@gmail.com',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 16),
        ),
      ),
      home: HomePage(),
    );
  }
}
