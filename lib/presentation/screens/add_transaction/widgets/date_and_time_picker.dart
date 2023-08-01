import 'package:flutter/material.dart';
import 'package:paisa_clone/core/colors_picker.dart';

Future<TimeOfDay?> timerPicker(
  BuildContext context,
) {
  return showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
    builder: (context, child) {
      return Theme(
        data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.dark(
              primary: kDeepBlue,
              onSurface: kGrey,
            ),
            timePickerTheme: TimePickerThemeData(
              backgroundColor: kBluegrey,
              helpTextStyle: const TextStyle(
                fontSize: 15,
                color: kWhite,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              hourMinuteShape: const CircleBorder(),
            )),
        child: child!,
      );
    },
  );
}

Future<DateTime?> datePicker(
  BuildContext context,
) {
  return showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(1950),
    lastDate: DateTime.now(),
    builder: (context, child) {
      return Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.dark(
            primary: kDeepBlue,
            onSurface: kWhite,
          ),
          datePickerTheme: DatePickerThemeData(
            backgroundColor: kBluegrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            headerBackgroundColor: kBluegrey,
            headerHelpStyle: const TextStyle(color: kWhite),
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white, // button text color
            ),
          ),
        ),
        child: child!,
      );
    },
  );
}
