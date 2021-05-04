import 'package:flutter/material.dart';
import 'package:flutter_agenda_estilo_twitch/components/home_page/model/item.dart';

enum ItemType { category, day }

class MyDropdown extends StatelessWidget {
  final List<String> items;
  Item item;
  ItemType type;
  final _itemSelected = ValueNotifier("");

  MyDropdown(
      {Key? key, required this.items, required this.item, required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    this._itemSelected.value = this.items[0];
    return ValueListenableBuilder(
      valueListenable: this._itemSelected,
      builder: (_, value, widget) => DropdownButton(
        isExpanded: true,
        value: value,
        onChanged: (dynamic value) {
          if (type == ItemType.category) {
            this.item.category = value;
          } else {
            this.item.day = value;
          }
          this._itemSelected.value = value;
        },
        items: [
          ...this.items.map(
                (el) => DropdownMenuItem(
                  value: el,
                  child: Container(
                    padding: EdgeInsets.only(left: 4),
                    child: Text(el),
                  ),
                ),
              )
        ],
      ),
    );
  }
}
