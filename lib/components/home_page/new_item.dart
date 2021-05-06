import 'package:flutter/material.dart';
import 'package:flutter_agenda_estilo_twitch/components/home_page/inherited_widget/my_inherited_widget.dart';
import 'package:flutter_agenda_estilo_twitch/custom/my_dropdown.dart';
import 'package:flutter_agenda_estilo_twitch/custom/my_time_picker.dart';

class NewItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = MyInheritedWidget.of(context)!.controller;
    return Center(
      child: Container(
        width: 1280,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: controller.titleController,
              focusNode: controller.focusNodeTitle,
              decoration: InputDecoration(hintText: "Título"),
            ),
            SizedBox(height: 12),
            MyDropdown(
              items: [
                "SELECCIONE UN ELEMENTO",
                "Ciencia y tecnología",
                "Gameplays",
                "Música",
              ],
              item: controller.item,
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
              item: controller.item,
              type: ItemType.day,
            ),
            SizedBox(height: 12),
            TextButton(
              onPressed: () async {
                await MyTimePicker.timePicker(
                    context: context,
                    timeController: controller.timeController);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Seleccione una hora ejemplo: 13:00:pm"),
                  TextField(
                    enabled: false,
                    controller: controller.timeController,
                  ),
                ],
              ),
            ),
            SizedBox(height: 14),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () => controller.addItem(),
                    child: Text("Aceptar")),
                SizedBox(width: 8),
                ElevatedButton(
                    onPressed: () => controller.cancel(),
                    child: Text("Cancelar")),
              ],
            ),
            SizedBox(height: 14),
          ],
        ),
      ),
    );
  }
}
