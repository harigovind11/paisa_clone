import 'package:flutter/material.dart';
import 'package:paisa_clone/core/colors_picker.dart';
import 'package:paisa_clone/core/constants.dart';

class DrawerListItem extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final IconData? icon;
  final bool isSelected;
  final VoidCallback onTap;
  const DrawerListItem({
    super.key,
    required this.title,
    this.backgroundColor = kTransparent,
    required this.isSelected,
    this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected == true ? kHoverGrey : kTransparent,
          borderRadius: kRadius30,
        ),
        child: ListTile(
          leading: Icon(
            icon,
            color: kWhite,
          ),
          title: Text(
            title,
            style: const TextStyle(
              color: kWhite,
            ),
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
