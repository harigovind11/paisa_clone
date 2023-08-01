import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:line_icons/line_icons.dart';
import 'package:paisa_clone/applications/value_notifiers/value_notifier.dart';
import 'package:paisa_clone/core/colors_picker.dart';
import 'package:paisa_clone/core/constants.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final valueNotifier = VNS.instance.bottomNavIndexChangeNotifier;
    return ValueListenableBuilder(
      valueListenable: valueNotifier,
      builder: (context, int newIndex, _) {
        return SizedBox(
          height: 85,
          child: BottomNavigationBar(
            currentIndex: newIndex,
            onTap: (index) {
              valueNotifier.value = index;
            },
            enableFeedback: true,
            type: BottomNavigationBarType.fixed,
            backgroundColor: kBluegreyShade,
            selectedItemColor: kGrey,
            unselectedItemColor: kGrey,
            selectedIconTheme: const IconThemeData(
              color: kGrey,
            ),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            selectedFontSize: 13,
            unselectedFontSize: 12,
            selectedLabelStyle:
                GoogleFonts.poppins(color: kWhite, fontWeight: FontWeight.bold),
            unselectedLabelStyle:
                GoogleFonts.poppins(color: kGrey, fontWeight: FontWeight.w400),
            items: [
              BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Icon(
                      Ionicons.home_outline,
                    ),
                  ),
                  activeIcon: Container(
                    height: 35,
                    width: 75,
                    decoration: BoxDecoration(
                      color: kHoverGrey,
                      borderRadius: kRadius30,
                    ),
                    child: const Icon(
                      Ionicons.home_sharp,
                    ),
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Icon(
                      Ionicons.card_outline,
                    ),
                  ),
                  activeIcon: Container(
                    height: 35,
                    width: 75,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 43, 77, 94),
                      borderRadius: kRadius30,
                    ),
                    child: const Icon(
                      Ionicons.card,
                    ),
                  ),
                  label: 'Accounts'),
              BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Icon(
                      LineIcons.handHoldingUsDollar,
                    ),
                  ),
                  activeIcon: Container(
                    height: 35,
                    width: 75,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 43, 77, 94),
                      borderRadius: kRadius30,
                    ),
                    child: const Icon(
                      LineIcons.handHoldingUsDollar,
                    ),
                  ),
                  label: 'Debts'),
              BottomNavigationBarItem(
                icon: const Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Icon(
                    Icons.dehaze_outlined,
                  ),
                ),
                activeIcon: Container(
                  height: 35,
                  width: 75,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 43, 77, 94),
                    borderRadius: kRadius30,
                  ),
                  child: const Icon(
                    Icons.dehaze_outlined,
                  ),
                ),
                label: 'Overview',
              ),
            ],
          ),
        );
      },
    );
  }
}

class BottomNavPageChanger {
  final valueNotifier = VNS.instance.bottomNavIndexChangeNotifier;
  BottomNavPageChanger._internal(); //NamedConstructor
  static BottomNavPageChanger instance = BottomNavPageChanger._internal();
  factory BottomNavPageChanger() {
    return instance;
  }

  Future<void> pageChanger(int index) async {
    valueNotifier.value = index;
  }
}
