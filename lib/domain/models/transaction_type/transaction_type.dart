import 'package:hive_flutter/hive_flutter.dart';

part 'transaction_type.g.dart';

@HiveType(typeId: 1)
enum TransactionType {
  @HiveField(0)
  income('income'),
  @HiveField(1)
  expense('expense'),
  @HiveField(2)
  transfer('transfer');

  final String type;
  const TransactionType(this.type);
}
