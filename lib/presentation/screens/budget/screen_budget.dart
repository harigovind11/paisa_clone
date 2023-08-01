import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:paisa_clone/presentation/screens/widgets/custom_appbar.dart';
import 'package:paisa_clone/presentation/screens/widgets/drawer_list_view.dart';
import 'package:paisa_clone/presentation/screens/widgets/empty_widget.dart';

class BudgetScreen extends StatelessWidget {
  const BudgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const Drawer(
        child: DrawerListView(),
      ),
      appBar: PreferredSize(
        preferredSize: size * .065,
        child: const CustomAppBar(
          title: 'Budget',
        ),
      ),
      body: const EmptyWidget(
          title: 'No budgets have been set for any categories ',
          icon: LineIcons.fileInvoiceWithUsDollar,
          description:
              'Set a budget for any category, and that category will show up here'),
    );
  }
}
//  ListView.builder(itemBuilder: (context,index){
//           return 
//         }