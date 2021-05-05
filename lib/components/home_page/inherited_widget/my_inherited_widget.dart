import 'package:flutter/material.dart';
import 'package:flutter_agenda_estilo_twitch/components/home_page/controller/item_controller.dart';

class MyInheritedWidget extends InheritedWidget {
  final Widget widget;
  final ItemController controller;

  MyInheritedWidget({required this.widget, required this.controller})
      : super(child: widget);

  static MyInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType(aspect: ItemController());
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    throw UnimplementedError();
  }
}
