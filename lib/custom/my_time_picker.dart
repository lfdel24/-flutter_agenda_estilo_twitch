import 'package:flutter/material.dart';

class MyTimePicker {
  static String timeOfDay =
      "${TimeOfDay.now().hour}:${TimeOfDay.now().minute}:${TimeOfDay.now().period.toString().replaceAll('DayPeriod.', '')}";

  static Future timePicker(
      {required BuildContext context,
      required TextEditingController timeController}) async {
    final picked = await showTimePicker(
      context: context,
      initialTime:
          TimeOfDay(hour: TimeOfDay.now().hour, minute: TimeOfDay.now().minute),
    );
    if (picked != null) {
      timeController.text =
          "${picked.hour}:${picked.minute}:${picked.period.toString().replaceAll('DayPeriod.', '')}";
    } else {
      timeController.text = MyTimePicker.timeOfDay;
    }
  }
}
