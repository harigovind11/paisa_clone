import 'package:flutter/material.dart';
import 'package:paisa_clone/core/colors_picker.dart';

class DebtsTabBar extends StatelessWidget {
  const DebtsTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        right: 8,
        bottom: 5,
      ),
      child: Material(
        color: kHoverGrey,
        borderRadius: BorderRadius.circular(32),
        child: TabBar(
          dividerColor: Colors.transparent,
          splashBorderRadius: BorderRadius.circular(32),
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: Theme.of(context).primaryColor,
          ),
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: kBluegrey,
          unselectedLabelColor: kWhite,
          labelStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: 'MusticaPro'),
          isScrollable: false,
          tabs: const [
            Tab(
              text: 'Debt',
            ),
            Tab(
              text: 'Credit',
            ),
          ],
        ),
      ),
    );
  }
}
