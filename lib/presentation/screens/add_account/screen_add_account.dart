// ignore_for_file: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:paisa_clone/applications/value_notifiers/value_notifier.dart';
import 'package:paisa_clone/core/colors_picker.dart';
import 'package:paisa_clone/core/constants.dart';
import 'package:paisa_clone/domain/models/account_type/account_type.dart';
import 'package:paisa_clone/presentation/screens/widgets/custom_textfield.dart';
import 'package:paisa_clone/presentation/screens/widgets/rounded_button.dart';
import 'widgets/account_color_picker_widget.dart';
import 'widgets/account_default_switch.dart';
import 'widgets/account_radio_button.dart';
import 'widgets/color_picker.dart';
import 'widgets/showInfo.dart';

class AddAccount extends StatelessWidget {
  AddAccount({super.key});
  final _amountController = TextEditingController();
  final _accountNameController = TextEditingController();
  final _cardHolderController = TextEditingController();
  AccountType? _selectedAccountType = AccountType.cash;
  final _valueNotifier = VNS.instance.selectedAccountTypeNotifier;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showInfo(context);
            },
            icon: const Icon(
              Icons.info_rounded,
            ),
          ),
        ],
        title: const Text('Add Account'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            decoration: const BoxDecoration(
              color: kBluegrey,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    AccountRadioButton(
                      type: AccountType.cash,
                      title: 'Cash',
                      onPressed: () {
                        _valueNotifier.value = AccountType.cash;
                        _selectedAccountType = AccountType.cash;
                        _valueNotifier.notifyListeners();
                      },
                    ),
                    kWidth10,
                    AccountRadioButton(
                      type: AccountType.bank,
                      title: 'Bank',
                      onPressed: () {
                        _valueNotifier.value = AccountType.bank;
                        _selectedAccountType = AccountType.bank;

                        _valueNotifier.notifyListeners();
                      },
                    ),
                    kWidth10,
                    AccountRadioButton(
                      type: AccountType.wallet,
                      title: 'Wallet',
                      onPressed: () {
                        _valueNotifier.value = AccountType.wallet;
                        _selectedAccountType = AccountType.wallet;
                        _valueNotifier.notifyListeners();
                      },
                    ),
                  ],
                ),
                AccountColorPickerWidget(),
                kHeight20,
                CustomTextField(
                  hintText: 'Enter cardholder name',
                  controller: _cardHolderController,
                  keyboardType: TextInputType.name,
                  inputFormatter: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(
                      RegExp(r'[a-zA-Z]'),
                    ),
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Purpose';
                    }
                    return null;
                  },
                ),
                kHeight15,
                CustomTextField(
                  hintText: 'Enter account name',
                  controller: _accountNameController,
                  keyboardType: TextInputType.name,
                  inputFormatter: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(
                      RegExp(r'[a-zA-Z]'),
                    ),
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Description';
                    }
                    return null;
                  },
                ),
                kHeight15,
                CustomTextField(
                  hintText: 'Amount',
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  inputFormatter: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Amount';
                    }
                    return null;
                  },
                ),
                kHeight20,
                AccountDefaultSwitchWidget(),
                RoundedButton(
                  title: 'Add',
                  textColor: kBluegrey,
                  backgroundColor: kLogoBlue,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
