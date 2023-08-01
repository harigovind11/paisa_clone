// ignore_for_file: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:paisa_clone/applications/value_notifiers/value_notifier.dart';
import 'package:paisa_clone/core/colors_picker.dart';
import 'package:paisa_clone/core/constants.dart';
import 'package:paisa_clone/domain/models/transaction_type/transaction_type.dart';
import 'package:paisa_clone/presentation/screens/widgets/rounded_button.dart';
import 'widgets/transaction_radio_button.dart';
import 'package:paisa_clone/presentation/screens/widgets/custom_textfield.dart';
import 'widgets/account_select_widget.dart';
import 'widgets/date_picker_widget.dart';

class AddTransaction extends StatelessWidget {
  AddTransaction({super.key});
  final _amountController = TextEditingController();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  TransactionType? _selectedCategoryType = TransactionType.income;
  final _valueNotifier = VNS.instance.selectedCategoryTypeNotifier;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Add Transaction'),
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
                    TransactionRadioButton(
                      type: TransactionType.expense,
                      title: 'Expense',
                      onPressed: () {
                        _valueNotifier.value = TransactionType.expense;
                        _selectedCategoryType = TransactionType.expense;
                        _valueNotifier.notifyListeners();
                      },
                    ),
                    kWidth10,
                    TransactionRadioButton(
                      type: TransactionType.income,
                      title: 'Income',
                      onPressed: () {
                        _valueNotifier.value = TransactionType.income;
                        _selectedCategoryType = TransactionType.income;

                        _valueNotifier.notifyListeners();
                      },
                    ),
                    kWidth10,
                    TransactionRadioButton(
                      type: TransactionType.transfer,
                      title: 'Transfer',
                      onPressed: () {
                        _valueNotifier.value = TransactionType.transfer;
                        _selectedCategoryType = TransactionType.transfer;
                        _valueNotifier.notifyListeners();
                      },
                    ),
                  ],
                ),
                kHeight30,
                CustomTextField(
                  hintText: 'Expense name',
                  controller: _nameController,
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
                kHeight15,
                CustomTextField(
                  hintText: 'Description',
                  controller: _descriptionController,
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
                kHeight20,
                const DatePickerWidget(),
                kHeight20,
                const AccountSelectWidget(),
                kHeight30,
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: kRadius20),
                      side: const BorderSide(
                        width: 2,
                        color: kGrey,
                      ),
                      backgroundColor: kTransparent),
                  child: const Text(
                    '+ Add new',
                    style: TextStyle(color: kGrey),
                    //TODO category adding and grid then refactor
                  ),
                ),
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
