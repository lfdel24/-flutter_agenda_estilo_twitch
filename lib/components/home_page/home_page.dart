import 'package:flutter/material.dart';
import 'package:flutter_agenda_estilo_twitch/components/home_page/controller/agenda_controller.dart';
import 'package:flutter_agenda_estilo_twitch/components/home_page/model/itemj.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _BuilderBody(),
    );
  }
}

class _BuilderBody extends StatelessWidget {
  final controller = AgendaController();

  @override
  Widget build(BuildContext context) {
    this.controller.loadItems();

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Agenda lfdel24@gmail.com",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          ValueListenableBuilder(
              valueListenable: this.controller.items,
              builder: (_, List<Item> items, ___) =>
                  _BuilderListView(items: items)),
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
          padding: EdgeInsets.only(top: 4),
          alignment: Alignment.centerLeft,
          child: Text(this.items[i].title),
        ),
      ),
    );
  }
}
