import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paisa_clone/core/colors_picker.dart';
import 'package:paisa_clone/core/constants.dart';

class StatsInsideBox extends StatelessWidget {
  const StatsInsideBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: kRadius20,
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total balance',
            style: GoogleFonts.montserrat(
                color: kOffWhite, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          kHeight10,
          Text(
            '₹ 54548',
            style: GoogleFonts.montserrat(
              color: kWhite,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeight30,
          Text(
            'Total',
            style: GoogleFonts.montserrat(
                color: kOffWhite, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          kHeight10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.caretDown,
                        color: kGreen,
                        size: 15,
                      ),
                      Text(
                        'Income',
                        style: GoogleFonts.montserrat(
                            color: kOffWhite,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  kHeight5,
                  Text(
                    '+₹6562',
                    style: GoogleFonts.montserrat(
                        color: kWhite,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              kWidth5,
              Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.caretUp,
                        color: kRed,
                        size: 15,
                      ),
                      Text(
                        'Expense',
                        style: GoogleFonts.montserrat(
                            color: kOffWhite,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  kHeight5,
                  Text(
                    '-₹6562',
                    style: GoogleFonts.montserrat(
                        color: kWhite,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              kWidth10,
            ],
          )
        ],
      ),
    );
  }
}
