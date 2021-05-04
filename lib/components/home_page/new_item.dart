import 'package:flutter/material.dart';
import 'package:flutter_agenda_estilo_twitch/components/home_page/inherited_widget/my_inherited_widget.dart';
import 'package:flutter_agenda_estilo_twitch/custom/my_dropdown.dart';
import 'package:flutter_agenda_estilo_twitch/custom/my_time_picker.dart';

class NewItem extends StatelessWidget {
  final _timeController = TextEditingController(text: MyTimePicker.timeOfDay);

  @override
  Widget build(BuildContext context) {
    final item = MyInheritedWidget.of(context)!.controller.newItem;
    return Center(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(hintText: "Título"),
              onChanged: (value) => item.title = value,
            ),
            SizedBox(height: 12),
            MyDropdown(
              items: [
                "SELECCIONE UN ELEMENTO",
                "Ciencia y tecnología",
                "Gameplays",
                "Música",
              ],
              item: item,
              type: ItemType.category,
            ),
            SizedBox(height: 12),
            MyDropdown(
              items: [
                "SELECCIONE UN ELEMENTO",
                "Lunes",
                "Martes",
                "Miércoles",
                "jueves",
                "Viernes",
              ],
              item: item,
              type: ItemType.day,
            ),
            SizedBox(height: 12),
            TextButton(
              onPressed: () async {
                await MyTimePicker.timePicker(
                    context: context, timeController: _timeController);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("seleccione una hora ejemplo: 13:00:pm"),
                  TextField(
                    enabled: false,
                    controller: _timeController,
                  ),
                ],
              ),
            ),
            SizedBox(height: 14),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      item.id = "1";
                      item.time = _timeController.text;
                      print(item.toString());
                    },
                    child: Text("Aceptar")),
                SizedBox(width: 8),
                ElevatedButton(onPressed: () {}, child: Text("Cancelar")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
