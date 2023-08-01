import 'package:flutter/material.dart';
import 'package:paisa_clone/core/constants.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({
    required this.title,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
  });
  final Color backgroundColor;
  final Color textColor;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: backgroundColor,
        borderRadius: kRadius30,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: size.width * .86,
          height: size.height * 0.05,
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
