import 'package:arsalan_project_3/components/my_button.dart';
import 'package:arsalan_project_3/components/my_text_form_field.dart';
import 'package:arsalan_project_3/constants/default_padding.dart';
import 'package:flutter/material.dart';

class Screen_Fifteen extends StatelessWidget {
  const Screen_Fifteen({super.key});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * MyPadding.scaffoldBodyPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.15,
            ),
            Text(
              'Get Started',
              style: TextStyle(
                fontSize: 31,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
                color: Color(0xff163B61),
              ),
            ),
            Text(
              'Create an account to continue',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
                color: Color(0xff408FAD),
              ),
            ),
            SizedBox(
              height: height * 0.075,
            ),
            MyTextFormField(
              hintText: 'Name',
              prefixIcon: Icons.person_outline,
            ),
            MyTextFormField(
              hintText: 'Email',
              prefixIcon: Icons.email_outlined,
            ),
            Spacer(),
            MyButton(title: 'Save Changes'),
            SizedBox(
              height: height * 0.06,
            ),
          ],
        ),
      ),
    );
  }
}
