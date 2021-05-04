import 'package:flutter/material.dart';
import 'package:flutter_agenda_estilo_twitch/components/home_page/new_item.dart';
import 'package:flutter_agenda_estilo_twitch/components/home_page/inherited_widget/my_inherited_widget.dart';
import 'package:flutter_agenda_estilo_twitch/components/home_page/model/item.dart';
import 'package:flutter_agenda_estilo_twitch/custom/my_text_style.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: _BuilderBody(),
      body: NewItem(),
    );
  }
}

class _BuilderBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = MyInheritedWidget.of(context)!.controller;
    controller.loadItems();
    return Container(
      width: double.infinity,
      color: Colors.black87,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1280),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Agenda lfdel24@gmail.com",
                style: MyTextStyle.title,
              ),
              ValueListenableBuilder(
                  valueListenable: controller.items,
                  builder: (_, List<Item> items, ___) =>
                      _BuilderListView(items: items)),
            ],
          ),
        ),
      ),
    );
  }
}

class _BuilderListView extends StatelessWidget {
  final List<Item> items;

  const _BuilderListView({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: this.items.length,
        itemBuilder: (_, i) => Container(
          height: 128,
          color: Colors.black54,
          padding: EdgeInsets.only(top: 4),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(this.items[i].day),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    color: Colors.white,
                    width: 100,
                    height: 100,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 12),
                      color: Colors.pink,
                      height: 100,
                      child: Text("Este es un demo toc acambiarlo"),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
