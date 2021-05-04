import 'package:flutter/material.dart';
import 'package:flutter_agenda_estilo_twitch/util/my_color.dart';
import 'package:flutter_agenda_estilo_twitch/util/my_time_picker.dart';
import 'package:flutter_agenda_estilo_twitch/util/my_dropdown.dart';

class AddItem extends StatelessWidget {
  final _timeController = TextEditingController(text: MyTimePicker.timeOfDay);

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
            TextButton(
              onPressed: () async {
                await MyTimePicker.timePicker(
                    context: context, timeController: _timeController);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("seleccione una hora ejemplo: 12:00",
                      style: Theme.of(context).textTheme.headline2),
                  TextField(
                    enabled: false,
                    controller: _timeController,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
