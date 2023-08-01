import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:paisa_clone/core/colors_picker.dart';
import 'package:paisa_clone/presentation/screens/debts/widgets/debts_tab_bar.dart';
import 'package:paisa_clone/presentation/screens/widgets/custom_appbar.dart';
import 'package:paisa_clone/presentation/screens/widgets/custom_fab.dart';
import 'package:paisa_clone/presentation/screens/widgets/drawer_list_view.dart';
import 'package:paisa_clone/presentation/screens/widgets/empty_widget.dart';

class DebtsScreen extends StatelessWidget {
  const DebtsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: CustomFAB(
          onPressed: () {},
          icon: Icons.add,
        ),
        drawer: const Drawer(
          child: DrawerListView(),
        ),
        appBar: PreferredSize(
          preferredSize: size * .132,
          child: CustomAppBar(
            title: 'Debts',
            bottom: PreferredSize(
              preferredSize: size * .132,
              child: const DebtsTabBar(),
            ),
          ),
        ),
        body: const EmptyWidget(
          title: 'There are no debts at this time',
          icon: LineIcons.handHoldingUsDollar,
          description: 'Add your debts to see them displayed here',
        ),
      ),
    );
  }
}
