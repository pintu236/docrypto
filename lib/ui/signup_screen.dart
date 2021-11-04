import 'package:docrypto/utils/colors.dart';
import 'package:docrypto/utils/design_utils.dart';
import 'package:docrypto/utils/dimens.dart';
import 'package:docrypto/utils/image_loader.dart';
import 'package:docrypto/utils/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  static var routeName = "/signup_screen";

  @override
  State<StatefulWidget> createState() {
    return _SignupState();
  }
}

class _SignupState extends State<SignUpScreen> {
  bool? _checked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 196,
                child: Stack(
                    fit: StackFit.loose,
                    children: [
                  ConstrainedBox(
                   constraints: BoxConstraints.tight(Size(double.infinity,148)),
                    child: Image.asset(
                      ImageLoader.getDrawable("background"),fit: BoxFit.fill,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        decoration:
                            DesignUtils.getCardShadow(radius: circleRadius),
                        child: Container(
                          padding: EdgeInsets.all(padding_large),
                          child: Image.asset(
                            ImageLoader.getIcon("ic_user"),
                            width: 64,
                            height: 64,
                          ),
                        )),
                  )
                ]),
              ),
              Container(
                padding: EdgeInsets.all(padding_large),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: DesignUtils.getCardShadow(),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration:
                            DesignUtils.normalTextField(Strings.userName),
                      ),
                    ),
                    SizedBox(
                      height: padding_large,
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
                        decoration:
                            DesignUtils.normalTextField(Strings.password),
                        obscureText: true,
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: colorEndGradient,
                            value: _checked,
                            onChanged: (value) {
                              setState(() {
                                _checked = value;
                              });
                            }),
                        Text(
                          Strings.iacceptterms,
                          style: DesignUtils.bold(
                              fontSize: 12, textColor: colorGrey),
                        )
                      ],
                    ),
                    SizedBox(
                      height: padding_large,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Ink(
                        decoration: DesignUtils.roundedButtonGradient(),
                        child: Container(
                          width: btnWidth,
                          height: btnHeight,
                          alignment: Alignment.center,
                          child: Text(Strings.signup),
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
                    Strings.alreadyHaveAccount,
                    style: DesignUtils.bold(fontSize: 12, textColor: colorGrey),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(
                      Strings.signInHere,
                      style: DesignUtils.regular(
                          fontSize: 12, textColor: colorEndGradient),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
