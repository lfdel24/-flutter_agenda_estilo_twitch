import 'package:flutter/material.dart';
import 'package:flutter_agenda_estilo_twitch/util/my_dropdown.dart';

class AddItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 600,
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: "Título"),
          ),
          MyDropdown(items: [
            "SELECCIONE UN ELEMENTO",
            "Ciencia y tecnoloía",
            "Gameplays",
            "Musíca",
          ]),
          MyDropdown(items: [
            "SELECCIONE UN ELEMENTO",
            "Lunes",
            "Martes",
            "Míercoles",
            "jueves",
            "Viernes",
          ]),
        ],
      ),
    );
  }
}
