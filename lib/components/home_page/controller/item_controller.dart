import 'package:flutter/foundation.dart';
import 'package:flutter_agenda_estilo_twitch/components/home_page/model/item.dart';

class ItemController extends ChangeNotifier {
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
    this.items.add(this.item);
    this.item = Item(id: "", title: "", category: "", day: "", time: "");
    this.notifyListeners();
  }

  void cancel() {
    this.item = Item(id: "", title: "", category: "", day: "", time: "");
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
