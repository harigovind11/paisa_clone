import 'package:flutter/material.dart';
import 'package:paisa_clone/applications/value_notifiers/value_notifier.dart';
import 'package:paisa_clone/core/colors_picker.dart';
import 'package:paisa_clone/core/constants.dart';
import 'package:paisa_clone/domain/models/account_type/account_type.dart';
import 'package:paisa_clone/domain/models/transaction_type/transaction_type.dart';

class AccountRadioButton extends StatelessWidget {
  AccountRadioButton({
    Key? key,
    required this.type,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final AccountType type;
  final String title;
  final VoidCallback onPressed;
  final _valueNotifier = VNS.instance.selectedAccountTypeNotifier;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _valueNotifier,
      builder: (BuildContext context, AccountType newCategory, _) {
        return OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: kRadius20),
            side: BorderSide(
                width: 2,
                color: (_valueNotifier.value == type) ? kWhite : kTransparent),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          child: Text(
            title,
            style: const TextStyle(color: kWhite),
          ),
        );
      },
    );
  }
}
