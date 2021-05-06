import 'package:flutter/foundation.dart';
import 'package:flutter_agenda_estilo_twitch/components/home_page/model/item.dart';

class ItemController extends ChangeNotifier {
  final items = <Item>[];
  Item newItem = Item(id: "", title: "", category: "", day: "", time: "");

  void removeItem(int i) {
    this.items.removeAt(i);
    this.notifyListeners();
  }

  void addItem() {
    this.items.add(this.newItem);
    this.newItem = initItem();
    this.notifyListeners();
  }

  initItem() {
    this.newItem = Item(id: "", title: "", category: "", day: "", time: "");
  }

  void loadItems() {
    this.items.addAll([
      Item(
          id: "1",
          title: "Desarrollando proyecto en laravel",
          category: "Desarrollo y Programación",
          day: "Lun",
          time: "03/05/2021"),
      // Item(
      //     id: "2",
      //     title: "Desarrollando proyecto en laravel",
      //     category: "Desarrollo y Programación",
      //     day: "Lun",
      //     time: "03/05/2021"),
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
