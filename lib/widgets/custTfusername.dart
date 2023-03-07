//create custom widget for username textfield
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:Quran.me/constant.dart';
import 'package:google_fonts/google_fonts.dart';

iniTfUser() {
  return SizedBox(
    width: 300,
    height: 50,
    child: TextField(
        decoration: InputDecoration(
            fillColor: primaryColor,
            hintText: "Username",
            hintStyle: TextStyle(
              color: Colors.black,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ))),
  );
}
