import 'package:flutter/material.dart';

class MyTimePicker {
  static Future timePicker(
      {required BuildContext context,
      required TextEditingController timeController}) async {
    try {
      final picked = await showTimePicker(
          context: context,
          initialTime: TimeOfDay(
              hour: TimeOfDay.now().hour, minute: TimeOfDay.now().minute),
          builder: (BuildContext context, Widget? child) {
            return MediaQuery(
              data:
                  MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
              child: child!,
            );
          });
      if (picked != null) {
        timeController.text = "${picked.hour}:${picked.minute}";
      } else {
        timeController.text =
            "${TimeOfDay.now().hour}:${TimeOfDay.now().minute}";
      }
    } catch (e) {
      timeController.text = "${TimeOfDay.now().hour}:${TimeOfDay.now().minute}";
    }
  }
}
