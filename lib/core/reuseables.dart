import 'package:flutter/material.dart';
import 'package:stitch_vine/core/size_config.dart';

Text createGeneralText(
    {required String inputText,
    required double fontSize,
    required String family,
    required FontWeight weight,
    required Color colorName,
    required double letterSpace,

    }) {
  return Text(
    inputText,
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: getProportionateScreenHeight(fontSize),
        fontFamily: family,
        fontWeight: weight,
        color: colorName,
        letterSpacing: letterSpace,
        
        ),
  );
}

Container createButton(
      {required BuildContext context,
      required double height,
      required double width,
      required Color buttonColor,
      required Widget nextPage,
      required String buttonText,
      required double buttoTextSize,
      required String buttonTextfamily,
      required FontWeight buttonTextweight,
      required Color buttonTextColor,
      required double space}) {
    return Container(
      height: getProportionateScreenHeight(height),
      width: getProportionateScreenWidth(width),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: buttonColor, ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => nextPage));
        },
        child: createGeneralText(
            inputText: buttonText,
            fontSize: buttoTextSize,
            family: buttonTextfamily,
            weight: buttonTextweight,
            colorName: buttonTextColor,
            letterSpace: space),
      ),
    );
  }