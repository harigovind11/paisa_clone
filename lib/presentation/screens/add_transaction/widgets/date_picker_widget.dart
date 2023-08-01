// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:paisa_clone/core/colors_picker.dart';

import 'date_and_time_parser.dart';
import 'date_and_time_picker.dart';

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({
    super.key,
  });

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime _selectedDate = DateTime.now();
  DateTime _selectedTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            onTap: () async {
              final DateTime? dateTime = await datePicker(
                context,
              );
              if (dateTime == null) {
                return;
              } else {
                setState(() {
                  _selectedDate = dateTime;
                  print(dateTime);
                });
              }
            },
            leading: Icon(
              Icons.today_rounded,
              color: kWhite.withOpacity(.5),
            ),
            title: Text(
              parseDate(_selectedDate),
              style: const TextStyle(
                color: kWhite,
              ),
            ),
          ),
        ),
        Expanded(
          child: ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            onTap: () async {
              final TimeOfDay? timeOfDay = await timerPicker(context);
              if (timeOfDay != null) {
                print(timeOfDay);
                setState(() {
                  _selectedTime = _selectedTime.copyWith(
                    hour: timeOfDay.hour,
                    minute: timeOfDay.minute,
                  );
                  print(_selectedTime);
                });
              }
            },
            leading: Icon(MdiIcons.clockOutline, color: kWhite.withOpacity(.5)),
            title: Text(
              parseTime(
                _selectedTime,
              ),
              style: const TextStyle(
                color: kWhite,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
