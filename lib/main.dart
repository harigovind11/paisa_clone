import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:paisa_clone/domain/models/account_type/account_type.dart';
import 'package:paisa_clone/domain/models/transaction_type/transaction_type.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(TransactionTypeAdapter().typeId)) {
    Hive.registerAdapter(TransactionTypeAdapter());
  }
  if (!Hive.isAdapterRegistered(AccountTypeAdapter().typeId)) {
    Hive.registerAdapter(AccountTypeAdapter());
  }
  runApp(Paisa());
}
