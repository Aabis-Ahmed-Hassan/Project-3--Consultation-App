import 'package:arsalan_project_3/components/my_button.dart';
import 'package:arsalan_project_3/components/my_text_form_field.dart';
import 'package:arsalan_project_3/constants/default_padding.dart';
import 'package:flutter/material.dart';

class Screen_Twenty extends StatelessWidget {
  const Screen_Twenty({super.key});
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
            const Text(
              'Welcome Back',
              style: TextStyle(
                fontSize: 31,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
                color: Color(0xff163B61),
              ),
            ),
            const Text(
              'Sign In to Continue',
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
              showSuffix: false,
            ),
            MyTextFormField(
              hintText: 'Password',
              prefixIcon: Icons.email_outlined,
              showSuffix: true,
              suffixIcon: Icons.add,
            ),
            const Align(
              alignment: Alignment.bottomRight,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color(0xff408FAD)),
              ),
            ),
            Row(
              children: [
                Container(
                  child: Checkbox(
                      checkColor: Colors.white,
                      activeColor: Color(0xff408FAD),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      value: true,
                      onChanged: (myBool) {}),
                ),
                Text(
                  'Keep me logged in',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff616161),
                      fontFamily: 'Poppins'),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            MyButton(title: 'Save Changes'),
            SizedBox(
              height: height * 0.05,
            ),
            const Text(
              'Use Social Login',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
                color: Color(0xff1B1D28),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  height: height * 0.0275,
                  image: const AssetImage('assets/icons/icon_6.png'),
                ),
                SizedBox(
                  width: width * 0.13,
                ),
                Image(
                  height: height * 0.0275,
                  image: const AssetImage('assets/icons/icon_7.png'),
                ),
                SizedBox(
                  width: width * 0.13,
                ),
                Image(
                  height: height * 0.0275,
                  image: const AssetImage('assets/icons/icon_8.png'),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.06,
            ),
            const Spacer(),
            Container(
              height: height * 0.075,
              width: double.infinity,
              child: Center(
                child: Container(
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  decoration: const BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Color(0xff408FAD), width: 2.5)),
                  ),
                  child: const Text(
                    'Create an account',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(
                        0xff408FAD,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
