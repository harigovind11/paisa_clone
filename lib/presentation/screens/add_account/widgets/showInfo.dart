import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paisa_clone/core/colors_picker.dart';
import 'package:paisa_clone/core/constants.dart';

void showInfo(BuildContext context) => showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      context: context,
      builder: (context) {
        return SafeArea(
          maintainBottomViewPadding: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                leading: Icon(
                  Icons.info_rounded,
                  color: kWhite,
                ),
                title: Text(
                  'Information',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "The account details you entered are not shared with\nanyone, including us.It is only used for visual\nrepresentation of account details,you may enter false info too",
                  style: GoogleFonts.montserrat(
                    fontSize: 13,
                    color: kWhite,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Ok',
                      style: TextStyle(
                        color: kWhite,
                      ),
                    ),
                  ),
                ),
              ),
              kHeight10,
            ],
          ),
        );
      },
    );
