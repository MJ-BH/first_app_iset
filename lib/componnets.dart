import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Componnets {
  var myStyle =
      GoogleFonts.poppins(color: Colors.grey[700], fontWeight: FontWeight.bold);
  var myStyle2 = GoogleFonts.fruktur(
      color: Colors.red[700], fontWeight: FontWeight.normal);
  myAvatar(double? radius, String path) {
    return CircleAvatar(
      backgroundImage: AssetImage(path),
      radius: radius,
    );
  }

  myBoxDecoration(double w, Color c1, double r, Color c2) {
    return BoxDecoration(
        border: Border.all(width: w, color: c1),
        borderRadius: BorderRadius.all(Radius.circular(r)),
        color: c2);
  }

  myContainer(Decoration decoration, double w, double h, double m, String text,
      TextStyle tStyle) {
    return Container(
      width: w,
      height: h,
      decoration: decoration,
      margin: EdgeInsets.all(m),
      child: Center(
          child: Text(
        text,
        style: tStyle,
      )),
    );
  }

   buttonStyle(Color color1, Color color2, TextStyle style) {
    return ElevatedButton.styleFrom(
        primary: color1,
        onPrimary: color2,
        textStyle: style,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: color2, width: 1.2)));
  }
  
  myButton(String text, ButtonStyle style) {
    return ElevatedButton(
        style: style,
        onPressed: () {
          print("object");
        },
        child: Text(text));
  }

}
