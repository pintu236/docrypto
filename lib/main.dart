import 'package:docrypto/ui/login_screen.dart';
import 'package:docrypto/ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(DoCryptoApp());
}

class DoCryptoApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Do Crypto',
      theme: ThemeData(
        fontFamily: "OpenSans",
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => SplashScreen()),
        GetPage(name: LoginScreen.routeName, page: () => LoginScreen())
      ],
    );
  }
}
