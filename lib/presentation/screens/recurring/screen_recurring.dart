import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:paisa_clone/core/colors_picker.dart';
import 'package:paisa_clone/presentation/screens/widgets/custom_appbar.dart';
import 'package:paisa_clone/presentation/screens/widgets/custom_fab.dart';
import 'package:paisa_clone/presentation/screens/widgets/drawer_list_view.dart';
import 'package:paisa_clone/presentation/screens/widgets/empty_widget.dart';

class RecurringScreen extends StatelessWidget {
  const RecurringScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: CustomFAB(
        onPressed: () {},
        icon: Icons.add,
      ),
      drawer: const Drawer(
        child: DrawerListView(),
      ),
      appBar: PreferredSize(
        preferredSize: size * .065,
        child: const CustomAppBar(
          title: 'Recurring',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const EmptyWidget(
              title: 'No Recurring events?',
              icon: LineIcons.moneyBill,
              description: 'Add recurring events to view them here'),
          TextButton(
            onPressed: () {},
            child: Text(
              'Add recurring events',
              style: GoogleFonts.montserrat(
                fontSize: 14,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
//  ListView.builder(itemBuilder: (context,index){
//           return 
//         }