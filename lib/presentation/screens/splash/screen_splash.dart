// import 'package:flutter/material.dart';
// import 'package:paisa_clone/core/colors_picker.dart';
// import 'package:paisa_clone/core/constants.dart';
// import 'package:paisa_clone/presentation/screens/widgets/logo.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({
//     super.key,
//   });

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     checkUserLogin();

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: kBluegrey,
//       body: Padding(
//         padding: EdgeInsets.only(top: 170),
//         child: Logo(
//           color1: kWhite,
//           color2: kBlueShade,
//         ),
//       ),
//     );
//   }

//   Future<void> gotoWelcomePage() async {
//     await Future.delayed(const Duration(milliseconds: 1700));
//     Navigator.of(context).pushReplacementNamed('/welcome');
//   }

//   Future<void> checkUserLogin() async {
//     final _sharedPrefs = await SharedPreferences.getInstance();
//     final _userLoggedIn = _sharedPrefs.getBool(SAVE_KEY_NAME);
//     // await TransactionDb.instance.openBoxes();
//     if (_userLoggedIn == null || _userLoggedIn == false) {
//       gotoWelcomePage();
//     } else {
//       await Future.delayed(const Duration(milliseconds: 1500));
//       // await TransactionDb.instance.openBoxes();
//       Navigator.of(context).pushReplacementNamed('/mainpage');
//     }
//   }
// }
