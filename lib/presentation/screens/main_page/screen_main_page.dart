import 'package:flutter/material.dart';
import 'package:paisa_clone/applications/value_notifiers/value_notifier.dart';
import 'package:paisa_clone/core/colors_picker.dart';
import 'package:paisa_clone/presentation/screens/account/screen_account.dart';
import 'package:paisa_clone/presentation/screens/debts/screen_debts.dart';
import 'package:paisa_clone/presentation/screens/home/screen_home.dart';
import 'package:paisa_clone/presentation/screens/overview/screen_overview.dart';

import 'widgets/bottom_nav.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({
    super.key,
  });

  final _pages = [
    HomeScreen(),
    AccountsScreen(),
    DebtsScreen(),
    OverviewScreen(),
  ];
  final valueNotifier = VNS.instance.bottomNavIndexChangeNotifier;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SafeArea(
              child: ValueListenableBuilder(
            valueListenable: valueNotifier,
            builder: (context, int _index, _) {
              return _pages[_index];
            },
          )),
          bottomNavigationBar: Theme(
              data: ThemeData(
                splashColor: kTransparent,
                highlightColor: kTransparent,
              ),
              child: const BottomNavigationBarWidget()),
        ),
      ],
    );
  }
}
