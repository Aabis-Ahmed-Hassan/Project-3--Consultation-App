import 'package:arsalan_project_3/components/my_app_bar.dart';
import 'package:arsalan_project_3/components/my_button.dart';
import 'package:arsalan_project_3/components/my_text_form_field.dart';
import 'package:arsalan_project_3/constants/app_texts.dart';
import 'package:arsalan_project_3/constants/default_padding.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Screen_Six extends StatelessWidget {
  const Screen_Six({super.key});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: MyAppBar(
        showImage: false,
        iconName: Icons.arrow_back_ios_new_rounded,
        showProfileImage: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * MyPadding.scaffoldBodyPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            const Text('Edit Profile Info', style: AppTexts.MyNormalText),
            SizedBox(
              height: height * 0.05,
            ),
            Align(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Column(
                    children: [
                      DottedBorder(
                        borderType: BorderType.RRect,
                        radius: Radius.circular(100),
                        color: Color(0xff408FAD),
                        strokeWidth: 5,
                        dashPattern: [25, 10],
                        child: CircleAvatar(
                          radius: height * 0.085,
                          backgroundImage:
                              const AssetImage('assets/images/image_1.png'),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    right: 1 / 2,
                    left: 1 / 2,
                    child: Center(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        height: height * 0.06,
                        width: height * 0.06,
                        decoration: BoxDecoration(
                          color: Color(0xff6FB489),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                        ),
                        child: Center(
                          child: Image(
                            height: height * 0.0225,
                            image: AssetImage('assets/icons/icon_2.png'),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
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
              hintText: 'Email',
              prefixIcon: Icons.email_outlined,
              showSuffix: false,
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

//Use less code below
//
// class MyFeature_S6 extends StatelessWidget {
//   String hintText;
//   var prefixIcon;
//   MyFeature_S6({super.key, required this.hintText, required this.prefixIcon});
//
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height * 1;
//     var width = MediaQuery.of(context).size.width * 1;
//     return Container(
//       margin: EdgeInsets.only(bottom: height * 0.02),
//       child: TextFormField(
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.symmetric(
//               horizontal: width * 0.065, vertical: height * 0.0185),
//           hintText: hintText,
//           border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(30),
//               borderSide: BorderSide.none),
//           fillColor: Color(0xffF5F5F5),
//           filled: true,
//           prefixIcon: Icon(
//             prefixIcon,
//             color: Color(0xff408FAD),
//             size: 18,
//           ),
//         ),
//       ),
//     );
//   }
// }
