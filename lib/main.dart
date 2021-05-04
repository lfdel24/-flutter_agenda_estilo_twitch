import 'package:flutter/material.dart';
import 'package:flutter_agenda_estilo_twitch/components/home_page/controller/agenda_controller.dart';
import 'package:flutter_agenda_estilo_twitch/components/home_page/home_page.dart';
import 'package:flutter_agenda_estilo_twitch/components/home_page/inherited_widget/my_inherited_widget.dart';

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
        ),
        home: MyInheritedWidget(
          widget: HomePage(),
          controller: AgendaController(),
        ));
  }
}
