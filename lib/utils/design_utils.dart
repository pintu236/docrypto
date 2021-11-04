import 'package:docrypto/utils/colors.dart';
import 'package:docrypto/utils/dimens.dart';
import 'package:flutter/material.dart';

class DesignUtils {
  static TextStyle title(
      {double? fontSize = 48, Color? textColor = colorTextPrimary}) {
    return TextStyle(
        fontFamily: "OpenSans", fontSize: fontSize, color: textColor);
  }

  static TextStyle regular(
      {double? fontSize = 16, Color? textColor = colorTextPrimary}) {
    return TextStyle(
        fontFamily: "OpenSans", fontSize: fontSize, color: textColor);
  }

  static TextStyle inputTextStyle(
      {double? fontSize = 18, Color? textColor = colorTextPrimary}) {
    return TextStyle(
        fontFamily: "OpenSans", fontSize: fontSize, color: textColor);
  }

  static TextStyle bold(
      {double? fontSize = 48, Color? textColor = colorTextPrimary}) {
    return TextStyle(
        fontFamily: "OpenSans",
        fontSize: fontSize,
        color: textColor,
        fontWeight: FontWeight.bold);
  }

  static InputDecoration normalTextField(
    String textHint,
  ) {
    return InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: field_padding),
        labelText: textHint,
        labelStyle: inputTextStyle(),
        focusColor: colorInputField,
        focusedBorder: focusedBorder(),
        border: focusedBorder(),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintStyle: inputTextStyle(),
        alignLabelWithHint: true);
  }

  static focusedBorder() {
    // return UnderlineInputBorder(borderSide: BorderSide(color: colorInputField));
    return OutlineInputBorder(borderSide: BorderSide.none);
  }

  static ButtonStyle roundedButton({Color btnColor = colorButton}) {
    return ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        textStyle: bold(fontSize: 16),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(btnCornerRadius)));
  }

  static roundedButtonGradient() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(btnCornerRadius),
        gradient: LinearGradient(
          colors: [colorStarGradient, colorEndGradient],
        ));
  }


  static getCardShadow({double radius=defaultRadius}) {
    return BoxDecoration(
      border: Border.all(color: Colors.black.withAlpha(10)),
      borderRadius: BorderRadius.all(
        Radius.circular(radius),
      ),
      color: Colors.white,
      boxShadow: <BoxShadow>[
        new BoxShadow(
          color: Colors.black.withAlpha(10),
          blurRadius: 10.0,
          spreadRadius: 4.0,
        ),
      ],
    );
  }
}
