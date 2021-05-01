import 'package:flutter/foundation.dart';
import 'package:flutter_agenda_estilo_twitch/components/home_page/model/itemj.dart';

class AgendaController {
  final items = ValueNotifier(<Item>[]);

  void loadItems() {
    this.items.value.addAll([
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
      Item(
          id: "3",
          title: "Desarrollando proyecto en laravel",
          category: "Desarrollo y Programación",
          day: "Lun",
          time: "03/05/2021"),
      Item(
          id: "4",
          title: "Desarrollando proyecto en laravel",
          category: "Desarrollo y Programación",
          day: "Lun",
          time: "03/05/2021"),
    ]);
  }
}
