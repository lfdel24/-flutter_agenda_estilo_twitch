import 'package:flutter/material.dart';
import 'package:flutter_agenda_estilo_twitch/components/home_page/new_item.dart';
import 'package:flutter_agenda_estilo_twitch/components/home_page/inherited_widget/my_inherited_widget.dart';
import 'package:flutter_agenda_estilo_twitch/components/home_page/model/item.dart';
import 'package:flutter_agenda_estilo_twitch/custom/my_listener_builder.dart';
import 'package:flutter_agenda_estilo_twitch/custom/my_text_style.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _BuilderBody(),
      // body: NewItem(),
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
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1280),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Flutter Agenda lfdel24@gmail.com",
                style: MyTextStyle.title,
              ),
              SizedBox(height: 14),
              _BuilderActions(),
              SizedBox(height: 14),
              MyListenerBuilder(
                listener: controller,
                builder: (_, widget) => Visibility(
                  visible: controller.itemVisibility,
                  child: NewItem(),
                ),
              ),
              SizedBox(height: 14),
              MyListenerBuilder(
                listener: controller,
                builder: (_, widget) =>
                    _BuilderListView(items: controller.items),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _BuilderActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = MyInheritedWidget.of(context)!.controller;
    return Container(
      child: Row(
        children: [
          MyListenerBuilder(
            listener: controller,
            builder: (_, widget) => IconButton(
                icon: controller.itemVisibility
                    ? Icon(Icons.close_outlined)
                    : Icon(Icons.add_rounded),
                onPressed: () {
                  controller.changeItemVisibility();
                }),
          ),
          SizedBox(width: 8),
          MyListenerBuilder(
            listener: controller,
            builder: (_, widget) => Text("${controller.items.length} items"),
          ),
        ],
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
          decoration: BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.circular(12),
          ),
          height: 128,
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.only(top: 4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${this.items[i].day} ${this.items[i].time}"),
                  SizedBox(height: 8),
                  Text(this.items[i].title),
                ],
              ),
              IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    MyInheritedWidget.of(context)!.controller.removeItem(i);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
