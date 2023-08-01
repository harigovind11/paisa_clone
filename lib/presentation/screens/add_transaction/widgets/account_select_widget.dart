import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';
import 'package:paisa_clone/core/colors_picker.dart';
import 'package:paisa_clone/core/constants.dart';

class AccountSelectWidget extends StatelessWidget {
  const AccountSelectWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'No accounts',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  color: kWhite,
                  fontWeight: FontWeight.w700,
                ),
              ),
              kHeight5,
              Text(
                'Add account to select',
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  color: kGrey,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          const LineIcon.angleRight(
            color: kGrey,
            size: 15,
          )
        ],
      ),
    );
  }
}
