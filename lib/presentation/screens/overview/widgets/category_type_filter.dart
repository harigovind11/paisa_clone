import 'package:flutter/material.dart';
import 'package:paisa_clone/applications/value_notifiers/value_notifier.dart';
import 'package:paisa_clone/core/colors_picker.dart';
import 'package:paisa_clone/domain/models/transaction_type/transaction_type.dart';

class CategoryTypeFilter extends StatelessWidget {
  const CategoryTypeFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final _valuenNotifier =
        VNS.instance.selectedOverviewTabTransactionTypeNotifier;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ValueListenableBuilder(
          valueListenable: _valuenNotifier,
          builder: (context, type, child) {
            return SegmentedButton<TransactionType>(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.selected)) {
                      return Theme.of(context).primaryColor;
                    }
                    return kBluegrey;
                  },
                ),
                foregroundColor: MaterialStatePropertyAll(
                  Theme.of(context).primaryColorLight,
                ),
              ),
              showSelectedIcon: false,
              segments: const [
                ButtonSegment<TransactionType>(
                  value: TransactionType.income,
                  label: Text('Income'),
                ),
                ButtonSegment<TransactionType>(
                  value: TransactionType.expense,
                  label: Text('Expense'),
                ),
              ],
              selected: <TransactionType>{type},
              onSelectionChanged: (newSelection) {
                _valuenNotifier.value = newSelection.first;
              },
            );
          }),
    );
  }
}
