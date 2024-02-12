import 'package:arsalan_project_3/components/my_app_bar.dart';
import 'package:arsalan_project_3/components/my_button.dart';
import 'package:arsalan_project_3/constants/app_texts.dart';
import 'package:flutter/material.dart';

class Screen_Twenty_Seven extends StatelessWidget {
  const Screen_Twenty_Seven({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: MyAppBar(
        imageAddress: 'assets/icons/icon_1.png',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            const Text('Schedule A Call with Carrie',
                style: AppTexts.MyNormalText),
            const Text('Meet Carrie!', style: AppTexts.MyHeadingText),
            SizedBox(
              height: height * 0.025,
            ),
            const Text(
              'For Teachers, Parents & School',
              style: AppTexts.MySubHeadingText,
            ),
            SizedBox(
              height: height * 0.0125,
            ),
            const Text(
                "Schedule a Zoom call for questions and \nconcerns : \n* Lesson Plans\n* Class Management\n* IEPs\n* Advocacy",
                style: AppTexts.MyParagraphText),
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: MyButton(
                title: 'Schedule A Call',
              ),
            ),
            SizedBox(
              height: height * 0.25,
            ),
          ],
        ),
      ),
    );
  }
}
