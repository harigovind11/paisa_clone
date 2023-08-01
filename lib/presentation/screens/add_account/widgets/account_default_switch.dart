import 'package:flutter/material.dart';
import 'package:paisa_clone/core/colors_picker.dart';

class AccountDefaultSwitchWidget extends StatefulWidget {
  const AccountDefaultSwitchWidget({
    super.key,
    this.accountId,
  });

  final int? accountId;

  @override
  State<AccountDefaultSwitchWidget> createState() =>
      _AccountDefaultSwitchWidgetState();
}

class _AccountDefaultSwitchWidgetState
    extends State<AccountDefaultSwitchWidget> {
  late bool isAccountDefault = defaultAccountId == widget.accountId;
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
      title: const Text(
        'Default account',
        style: TextStyle(
          color: kWhite,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      value: isAccountDefault,
      onChanged: (value) {
        setState(() {
          isAccountDefault = value;
        });
      },
    );
  }
}

const String defaultAccountId = "default_account_id";
