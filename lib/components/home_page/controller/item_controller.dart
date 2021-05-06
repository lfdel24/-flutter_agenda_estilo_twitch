import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_agenda_estilo_twitch/components/home_page/model/item.dart';
import 'package:flutter_agenda_estilo_twitch/custom/my_time_picker.dart';

class ItemController extends ChangeNotifier {
  //
  final titleController = TextEditingController(text: "");
  final timeController = TextEditingController(text: MyTimePicker.timeOfDay);
  final focusNodeTitle = FocusNode();
  //

  final items = <Item>[];
  Item item = Item(id: "", title: "", category: "", day: "", time: "");
  bool itemVisibility = false;

  void changeItemVisibility() {
    this.itemVisibility = !this.itemVisibility;
    this.notifyListeners();
  }

  void removeItem(int i) {
    this.items.removeAt(i);
    this.notifyListeners();
  }

  void addItem() {
    this.item.id = "${UniqueKey()}";
    this.item.title = this.timeController.text;
    this.item.time = this.timeController.text;
    this.items.add(this.item);
    this.item = Item(id: "", title: "", category: "", day: "", time: "");
    this.titleController.text = "";
    this.timeController.text = MyTimePicker.timeOfDay;
    changeItemVisibility();
    this.notifyListeners();
  }

  void cancel() {
    this.item = Item(id: "", title: "", category: "", day: "", time: "");
    this.titleController.text = "";
    this.timeController.text = MyTimePicker.timeOfDay;
    this.focusNodeTitle.requestFocus();
    this.notifyListeners();
  }

  void loadItems() {
    this.items.addAll([
      Item(
          id: "1",
          title: "Desarrollando proyecto en laravel",
          category: "Desarrollo y Programación",
          day: "Lun",
          time: "03/05/2021"),
      Item(
          id: "2",
          title: "Desarrollando proyecto en laravel",
          category: "Desarrollo y Programación",
          day: "Lun",
          time: "03/05/2021"),
      // Item(
      //     id: "3",
      //     title: "Desarrollando proyecto en laravel",
      //     category: "Desarrollo y Programación",
      //     day: "Lun",
      //     time: "03/05/2021"),
      // Item(
      //     id: "4",
      //     title: "Desarrollando proyecto en laravel",
      //     category: "Desarrollo y Programación",
      //     day: "Lun",
      //     time: "03/05/2021"),
    ]);
    this.notifyListeners();
  }
}
