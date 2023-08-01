import 'package:flutter/material.dart';
import 'package:paisa_clone/core/colors_picker.dart';
import 'color_picker.dart';

class AccountColorPickerWidget extends StatefulWidget {
  const AccountColorPickerWidget({super.key});

  @override
  State<AccountColorPickerWidget> createState() =>
      _AccountColorPickerWidgetState();
}

class _AccountColorPickerWidgetState extends State<AccountColorPickerWidget> {
  int? selectedColor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      onTap: () async {
        final color = await colorPicker(
          context,
          defaultColor: Colors.red.value,
        );
        setState(() {
          selectedColor = color;
          print(selectedColor);
        });
      },
      leading: const Icon(
        Icons.color_lens,
        color: kDeepBlue,
        size: 25,
      ),
      title: const Text(
        'Pick color',
        style: TextStyle(
          color: kWhite,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: const Text(
        'Set color to your category',
        style: TextStyle(
          color: kWhite,
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
      ),
      trailing: Container(
        margin: const EdgeInsets.only(right: 12),
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(selectedColor ?? Colors.red.value),
        ),
      ),
    );
  }
}
