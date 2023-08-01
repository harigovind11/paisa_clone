import 'package:flutter/material.dart';
import 'package:paisa_clone/domain/models/account_type/account_type.dart';
import 'package:paisa_clone/domain/models/transaction_type/transaction_type.dart';

//! Valuenotifers

class VNS {
//Singleton
  VNS._internal();
  static VNS instance = VNS._internal();
  factory VNS() {
    return instance;
  }
  ValueNotifier<int> bottomNavIndexChangeNotifier = ValueNotifier(0);

  ValueNotifier<TransactionType> selectedCategoryTypeNotifier =
      ValueNotifier(TransactionType.expense);

  ValueNotifier<AccountType> selectedAccountTypeNotifier =
      ValueNotifier(AccountType.cash);

  final ValueNotifier<TransactionType>
      selectedOverviewTabTransactionTypeNotifier =
      ValueNotifier<TransactionType>(TransactionType.income);
}
