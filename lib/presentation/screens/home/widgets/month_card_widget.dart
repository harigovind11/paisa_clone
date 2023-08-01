import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:paisa_clone/core/colors_picker.dart';

class MonthCardWidget extends StatelessWidget {
  const MonthCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            color: kHoverGrey,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 16,
                        backgroundColor: kGreen.withOpacity(0.3),
                        child: Icon(
                          MdiIcons.arrowBottomLeft,
                          color: kGreen,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Income',
                                style: GoogleFonts.montserrat(
                                    color: kOffWhite,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '₹6562',
                                style: GoogleFonts.montserrat(
                                    color: kWhite,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Sparkline(
                        data: [],
                        useCubicSmoothing: true,
                        cubicSmoothingFactor: 0.2,
                        lineWidth: 3,
                        lineColor: kGreen,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            color: kHoverGrey,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 16,
                        backgroundColor: kRed.withOpacity(0.3),
                        child: Icon(
                          MdiIcons.arrowBottomLeft,
                          color: kRed,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Expense',
                                style: GoogleFonts.montserrat(
                                    color: kOffWhite,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '₹6562',
                                style: GoogleFonts.montserrat(
                                    color: kWhite,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Sparkline(
                        data: [],
                        useCubicSmoothing: true,
                        cubicSmoothingFactor: 0.2,
                        lineWidth: 3,
                        lineColor: kRed,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
