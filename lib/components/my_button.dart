import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String title;
  MyButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: height * 0.065,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: Color(0xff70BEB0),
        ),
        child: Center(
          child: Text(
            title.toString(),
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              color: Color(
                0xffFFFFFF,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
