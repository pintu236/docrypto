import 'package:docrypto/utils/colors.dart';
import 'package:docrypto/utils/design_utils.dart';
import 'package:docrypto/utils/dimens.dart';
import 'package:docrypto/utils/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Container(
          padding: EdgeInsets.all(padding_large),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Strings.welcome,
                    style: DesignUtils.bold(textColor: colorGrey, fontSize: 16),
                  ),
                  Text(
                    "Saurabh Jurri",
                    style: DesignUtils.bold(fontSize: 16),
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
