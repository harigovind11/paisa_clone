import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:paisa_clone/presentation/screens/widgets/custom_appbar.dart';
import 'package:paisa_clone/presentation/screens/widgets/custom_fab.dart';
import 'package:paisa_clone/presentation/screens/widgets/drawer_list_view.dart';
import 'package:paisa_clone/presentation/screens/widgets/empty_widget.dart';

class AccountsScreen extends StatelessWidget {
  const AccountsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: CustomFAB(
        onPressed: () {
          Navigator.pushNamed(context, '/add-account-screen');
        },
        icon: Icons.add,
      ),
      drawer: const Drawer(
        child: DrawerListView(),
      ),
      appBar: PreferredSize(
        preferredSize: size * .065,
        child: const CustomAppBar(
          title: 'Accounts',
        ),
      ),
      body: const EmptyWidget(
          title: 'No accounts are available',
          icon: Ionicons.card,
          description: 'Add an account to display it here'),
    );
  }
}
//  ListView.builder(itemBuilder: (context,index){
//           return 
//         }