import 'package:arsalan_project_3/constants/default_padding.dart';
import 'package:flutter/material.dart';

class Screen_Fourteen extends StatelessWidget {
  const Screen_Fourteen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: width * MyPadding.scaffoldBodyPadding + 10),
      child: Center(
        child: Image(
          image: AssetImage('assets/images/image_8.png'),
        ),
      ),
    ));
  }
}
