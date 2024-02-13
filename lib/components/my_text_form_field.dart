import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  var hintText;
  var prefixIcon;
  var showSuffix;
  var suffixIcon;
  MyTextFormField(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      this.showSuffix = false,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Container(
      margin: EdgeInsets.only(bottom: height * 0.02),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              horizontal: width * 0.065, vertical: height * 0.0185),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xffADAFB9),
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins',
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none),
          fillColor: Color(0xffF5F5F5),
          filled: true,
          prefixIcon: Icon(
            prefixIcon,
            color: Color(0xff408FAD),
            size: 18,
          ),
          suffixIcon: showSuffix
              ? Icon(
                  suffixIcon,
                  color: Color(0xffCECECE),
                  size: 17,
                )
              : Icon(null),
        ),
      ),
    );
  }
}
