import 'package:docrypto/ui/home_screen.dart';
import 'package:docrypto/ui/signup_screen.dart';
import 'package:docrypto/utils/colors.dart';
import 'package:docrypto/utils/design_utils.dart';
import 'package:docrypto/utils/dimens.dart';
import 'package:docrypto/utils/image_loader.dart';
import 'package:docrypto/utils/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  static var routeName = "/login_screen";

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(padding_large),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ImageLoader.getIcon("crypto"),
                    width: 96,
                    height: 96,
                  ),
                  Text(
                    Strings.welcomeBack,
                    style: DesignUtils.bold(fontSize: 32),
                  ),
                  Text(
                    Strings.pleaseLoginToAccount,
                    style: DesignUtils.regular(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: margin_large,
                  ),
                  Container(
                    decoration: DesignUtils.getCardShadow(),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration:
                          DesignUtils.normalTextField(Strings.emailAddress),
                    ),
                  ),
                  SizedBox(
                    height: padding_large,
                  ),
                  Container(
                    decoration: DesignUtils.getCardShadow(),
                    child: TextField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: DesignUtils.normalTextField(Strings.password),
                    ),
                  ),
                  SizedBox(
                    height: padding_large,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.off(() => HomeScreen());
                    },
                    child: Ink(
                      decoration: DesignUtils.roundedButtonGradient(),
                      child: Container(
                        width: btnWidth,
                        height: btnHeight,
                        alignment: Alignment.center,
                        child: Text(Strings.login),
                      ),
                    ),
                    style: DesignUtils.roundedButton(),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Strings.dontHaveAccount,
                  style: DesignUtils.regular(),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => SignUpScreen());
                  },
                  child: Text(
                    Strings.create,
                    style: DesignUtils.regular(textColor: colorEndGradient),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
