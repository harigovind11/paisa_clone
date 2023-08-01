import 'package:hive_flutter/hive_flutter.dart';
part 'account_type.g.dart';

@HiveType(typeId: 1)
enum AccountType {
  @HiveField(0)
  cash('cash'),
  @HiveField(1)
  bank('bank'),
  @HiveField(2)
  wallet('wallet');

  final String type;
  const AccountType(this.type);
}
