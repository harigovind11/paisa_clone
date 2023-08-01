import 'package:flutter/material.dart';
import 'package:paisa_clone/core/colors_picker.dart';
import 'presentation/router/app_router.dart';

class Paisa extends StatelessWidget {
  Paisa({Key? key}) : super(key: key);

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kDeepBlue,
          canvasColor: kBluegrey,
          scaffoldBackgroundColor: kBluegrey,
          primaryColorLight: kWhite,
          appBarTheme: const AppBarTheme(
            color: kBluegrey,
            elevation: 0,
          )),
      onGenerateRoute: _appRouter.onGenerateRoute,
    );
  }
}
