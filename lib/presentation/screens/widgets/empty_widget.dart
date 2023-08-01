import 'package:flutter/material.dart';
import 'package:paisa_clone/core/colors_picker.dart';
import 'package:paisa_clone/core/constants.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.description,
    this.onActionPressed,
    this.actionTitle,
  }) : super(key: key);

  final String? actionTitle;
  final String description;
  final IconData icon;
  final VoidCallback? onActionPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 96,
              color: Theme.of(context).primaryColor,
            ),
            kHeight5,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  color: kWhite,
                ),
              ),
            ),
            kHeight10,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: kWhite,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            kHeight10,
          ],
        ),
      ),
    );
  }
}
