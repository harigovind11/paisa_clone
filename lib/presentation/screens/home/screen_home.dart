import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paisa_clone/core/colors_picker.dart';
import 'package:paisa_clone/core/constants.dart';
import 'package:paisa_clone/presentation/screens/widgets/custom_appbar.dart';
import 'package:paisa_clone/presentation/screens/widgets/custom_fab.dart';
import 'package:paisa_clone/presentation/screens/widgets/empty_widget.dart';
import '../widgets/drawer_list_view.dart';
import 'widgets/month_card_widget.dart';
import 'widgets/stats_inside_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: CustomFAB(
        onPressed: () {
          Navigator.pushNamed(context, '/add-transaction-screen');
        },
        icon: Icons.add,
      ),
      drawer: const Drawer(
        child: DrawerListView(),
      ),
      appBar: PreferredSize(
        preferredSize: size * .065,
        child: const CustomAppBar(
          title: 'Home',
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: kBluegrey,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kHeight10,
                      Text(
                        'user name',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: kWhite,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      kHeight10,
                      Text(
                        'Welcome back!',
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: kWhite,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      kHeight20,
                    ],
                  ),
                  const StatsInsideBox(),
                  kHeight20,
                  Text(
                    'This month',
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      color: kWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kHeight20,
                  const MonthCardWidget(),
                  kHeight20,
                  Text(
                    'Transactions',
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      color: kWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const EmptyWidget(
                      title: 'No expenses yet?',
                      icon: Icons.money_off_rounded,
                      description:
                          'If there are no expenses start by adding expense to see it displayed here.'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
