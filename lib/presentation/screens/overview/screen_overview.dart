import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:paisa_clone/presentation/screens/widgets/custom_appbar.dart';
import 'package:paisa_clone/presentation/screens/widgets/custom_fab.dart';
import 'package:paisa_clone/presentation/screens/widgets/drawer_list_view.dart';
import 'package:paisa_clone/presentation/screens/widgets/empty_widget.dart';
import 'widgets/category_type_filter.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: CustomFAB(
        onPressed: () {},
        icon: Icons.calendar_month,
      ),
      drawer: const Drawer(
        child: DrawerListView(),
      ),
      appBar: PreferredSize(
        preferredSize: size * .065,
        child: const CustomAppBar(
          title: 'Overview',
        ),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CategoryTypeFilter(),
          EmptyWidget(
            title: 'No overview data',
            icon: LineIcons.wavyMoneyBill,
            description: 'To see your spending overview, add your expenses',
          ),
        ],
      ),
    );
  }
}
