import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
        body: Center(
      child: Container(
        margin: EdgeInsets.only(bottom: height * 0.02),
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: width * 0.065, vertical: height * 0.0185),
            hintText: 'adsfafaf',
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
              Icons.add,
              color: Color(0xff408FAD),
              size: 18,
            ),
            suffixIcon: Icon(Icons.add),
          ),
        ),
      ),
    ));
  }
}
