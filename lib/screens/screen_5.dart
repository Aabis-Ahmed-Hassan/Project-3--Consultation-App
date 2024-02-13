import 'package:arsalan_project_3/components/my_app_bar.dart';
import 'package:arsalan_project_3/constants/app_texts.dart';
import 'package:arsalan_project_3/constants/default_padding.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Screen_Five extends StatelessWidget {
  const Screen_Five({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * MyPadding.scaffoldBodyPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.02,
              ),
              const Text('Profile', style: AppTexts.MyNormalText),
              SizedBox(
                height: height * 0.025,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    DottedBorder(
                        borderType: BorderType.RRect,
                        radius: Radius.circular(100),
                        color: Color(0xff408FAD),
                        strokeWidth: 5,
                        dashPattern: [25, 10],
                        child: CircleAvatar(
                          radius: height * 0.07,
                          backgroundImage:
                              const AssetImage('assets/images/image_1.png'),
                        )),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    const Text(
                      'Michael Oliver',
                      style: TextStyle(
                          fontSize: 21,
                          color: Color(0xff163B61),
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins'),
                    ),
                    const Text(
                      'Los Angeles, USA',
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff408FAD),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              MyFeature_S5(title: 'Profile Info'),
              MyFeature_S5(title: 'Change Password'),
              MyFeature_S5(title: 'Payment Method'),
            ],
          ),
        ),
      ),
    );
  }
}

class MyFeature_S5 extends StatelessWidget {
  String title;
  MyFeature_S5({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.075, vertical: height * 0.02),
      margin: EdgeInsets.only(bottom: height * 0.025),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(
          0xffE5F1EA,
        ),
      ),
      // height: height * 0.05,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff000000),
              fontFamily: 'Poppins',
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.015, vertical: width * 0.015),
            decoration: BoxDecoration(
              color: Color(0xff70BEB0),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
