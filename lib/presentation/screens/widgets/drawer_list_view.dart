import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:line_icons/line_icons.dart';
import 'package:paisa_clone/core/colors_picker.dart';

import 'drawer_list_item.dart';

class DrawerListView extends StatelessWidget {
  const DrawerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 25),
      children: [
        ListTile(
          leading: const Icon(
            Icons.wallet,
            color: kLogoBlue,
            size: 30,
          ),
          title: Text(
            'Paisa',
            style: GoogleFonts.poppins(
                color: kWhite, fontSize: 20, fontWeight: FontWeight.w800),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        DrawerListItem(
          title: 'Home',
          icon: Ionicons.home_sharp,
          isSelected: true,
          onTap: () {
            Navigator.pushNamed(context, '/home-screen');
          },
        ),
        DrawerListItem(
          title: 'Accounts',
          icon: Ionicons.card_outline,
          isSelected: false,
          onTap: () {
            Navigator.pushNamed(context, '/accounts-screen');
          },
        ),
        DrawerListItem(
          title: 'Debts',
          icon: LineIcons.handHoldingUsDollar,
          isSelected: false,
          onTap: () {
            Navigator.pushNamed(context, '/debts-screen');
          },
        ),
        DrawerListItem(
          title: 'Overview',
          icon: Icons.dehaze_outlined,
          isSelected: false,
          onTap: () {
            Navigator.pushNamed(context, '/overview-screen');
          },
        ),
        DrawerListItem(
          title: 'Categories',
          icon: Icons.category_outlined,
          isSelected: false,
          onTap: () {
            Navigator.pushNamed(context, '/category-screen');
          },
        ),
        DrawerListItem(
          title: 'Budget',
          icon: LineIcons.fileInvoiceWithUsDollar,
          isSelected: false,
          onTap: () {
            Navigator.pushNamed(context, '/budget-screen');
          },
        ),
        DrawerListItem(
          title: 'Recurring',
          icon: LineIcons.moneyBill,
          isSelected: false,
          onTap: () {
            Navigator.pushNamed(context, '/recurring-screen');
          },
        ),
        const Divider(color: kGrey),
        DrawerListItem(
          title: 'Settings',
          icon: LineIcons.cog,
          isSelected: false,
          onTap: () {
            // Navigator.pushNamed(context, 'settings-screen');
          },
        ),
      ],
    );
  }
}
