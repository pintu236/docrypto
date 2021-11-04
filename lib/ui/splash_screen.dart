import 'package:docrypto/ui/login_screen.dart';
import 'package:docrypto/utils/design_utils.dart';
import 'package:docrypto/utils/image_loader.dart';
import 'package:docrypto/utils/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1000), () {
      Get.off(() => LoginScreen(), transition: Transition.leftToRight);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              ImageLoader.getIcon("crypto"),
              color: Colors.black,
              width: 64,
              height: 64,
            ),
          ),
          Text(
            Strings.appName,
            style: DesignUtils.title(),
          )
        ],
      ),
    );
  }
}
