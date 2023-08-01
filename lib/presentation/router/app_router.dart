import 'package:flutter/material.dart';
import 'package:paisa_clone/presentation/screens/account/screen_account.dart';
import 'package:paisa_clone/presentation/screens/add_account/screen_add_account.dart';
import 'package:paisa_clone/presentation/screens/add_transaction/screen_add_transaction.dart';
import 'package:paisa_clone/presentation/screens/budget/screen_budget.dart';
import 'package:paisa_clone/presentation/screens/categories/screen_categories.dart';
import 'package:paisa_clone/presentation/screens/debts/screen_debts.dart';
import 'package:paisa_clone/presentation/screens/home/screen_home.dart';
import 'package:paisa_clone/presentation/screens/main_page/screen_main_page.dart';
import 'package:paisa_clone/presentation/screens/overview/screen_overview.dart';
import 'package:paisa_clone/presentation/screens/recurring/screen_recurring.dart';
// import '../screens/splash/screen_splash.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // case '/':
      //   return MaterialPageRoute(
      //     builder: (_) => SplashScreen(),
      //   );

      case '/':
        return MaterialPageRoute(
          builder: (_) => ScreenMainPage(),
        );

      case '/home-screen':
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      case '/debts-screen':
        return MaterialPageRoute(
          builder: (_) => DebtsScreen(),
        );
      case '/accounts-screen':
        return MaterialPageRoute(
          builder: (_) => AccountsScreen(),
        );
      case '/debts-screen':
        return MaterialPageRoute(
          builder: (_) => DebtsScreen(),
        );
      case '/overview-screen':
        return MaterialPageRoute(
          builder: (_) => OverviewScreen(),
        );
      case '/category-screen':
        return MaterialPageRoute(
          builder: (_) => CategoryScreen(),
        );
      case '/budget-screen':
        return MaterialPageRoute(
          builder: (_) => BudgetScreen(),
        );
      case '/recurring-screen':
        return MaterialPageRoute(
          builder: (_) => RecurringScreen(),
        );
      case '/add-transaction-screen':
        return MaterialPageRoute(
          builder: (_) => AddTransaction(),
        );
      case '/add-account-screen':
        return MaterialPageRoute(
          builder: (_) => AddAccount(),
        );
      default:
        return null;
    }
  }
}
