import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';
import 'package:paisa_clone/core/colors_picker.dart';
import 'package:paisa_clone/core/constants.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final PreferredSizeWidget? bottom;
  const CustomAppBar({
    super.key,
    required this.title,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kBluegrey,
      elevation: 0,
      title: Text(
        title,
        style: GoogleFonts.aBeeZee(
            color: kWhite, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      bottom: bottom,
      actions: [
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: kWhite,
                  size: 27,
                )),
            CircleAvatar(
              radius: 22,
              backgroundColor: kHoverGrey,
              child: IconButton(
                onPressed: () {},
                icon: const LineIcon.userCircle(
                  color: kWhite,
                  size: 27,
                ),
              ),
            ),
          ],
        ),
        kWidth20,
      ],
    );
  }
}
