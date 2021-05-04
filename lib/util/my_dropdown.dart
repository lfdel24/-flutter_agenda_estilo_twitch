import 'package:flutter/material.dart';
import 'package:flutter_agenda_estilo_twitch/util/my_color.dart';

class MyDropdown extends StatelessWidget {
  final List<String> items;
  final itemSelected = ValueNotifier("");

  MyDropdown({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    this.itemSelected.value = this.items[0];
    return ValueListenableBuilder(
      valueListenable: this.itemSelected,
      builder: (_, value, widget) => DropdownButton(
        isExpanded: true,
        value: value,
        onChanged: (dynamic value) {
          this.itemSelected.value = value;
          print(this.itemSelected.value);
        },
        items: [
          ...this.items.map(
                (el) => DropdownMenuItem(
                  value: el,
                  child: Container(
                      padding: EdgeInsets.only(left: 4),
                      child: Text(el,
                          style: Theme.of(context).textTheme.headline1)),
                ),
              )
        ],
      ),
    );
  }
}
