import 'package:flutter/material.dart';
import 'package:paisa_clone/presentation/screens/widgets/custom_appbar.dart';
import 'package:paisa_clone/presentation/screens/widgets/custom_fab.dart';
import 'package:paisa_clone/presentation/screens/widgets/drawer_list_view.dart';
import 'package:paisa_clone/presentation/screens/widgets/empty_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

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
          title: 'Categories',
        ),
      ),
      body: const EmptyWidget(
          title: 'No categories are available',
          icon: Icons.category_outlined,
          description: 'Add an category to display it here'),
    );
  }
}
//  ListView.builder(itemBuilder: (context,index){
//           return 
//         }