import 'package:flutter/material.dart';
import 'package:flutter_agenda_estilo_twitch/util/my_color.dart';
import 'package:flutter_agenda_estilo_twitch/util/my_time_picker.dart';
import 'package:flutter_agenda_estilo_twitch/util/my_dropdown.dart';

class AddItem extends StatelessWidget {
  final _timeController = TextEditingController(
      text: "${TimeOfDay.now().hour}:${TimeOfDay.now().minute}");

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 600,
        height: 600,
        child: Column(
          children: [
            // TextField(
            //   decoration: InputDecoration(hintText: "Título"),
            // ),
            // MyDropdown(items: [
            //   "SELECCIONE UN ELEMENTO",
            //   "Ciencia y tecnología",
            //   "Gameplays",
            //   "Música",
            // ]),
            // MyDropdown(items: [
            //   "SELECCIONE UN ELEMENTO",
            //   "Lunes",
            //   "Martes",
            //   "Miércoles",
            //   "jueves",
            //   "Viernes",
            // ]),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    enabled: false,
                    controller: _timeController,
                    decoration: InputDecoration(hintText: "Hora"),
                  ),
                ),
                InkWell(
                    onTap: () async {
                      await MyTimePicker.timePicker(
                          context: context, timeController: _timeController);
                    },
                    child: Icon(Icons.timelapse)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
