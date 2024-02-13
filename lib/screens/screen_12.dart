import 'package:arsalan_project_3/components/my_app_bar.dart';
import 'package:arsalan_project_3/constants/app_texts.dart';
import 'package:arsalan_project_3/constants/default_padding.dart';
import 'package:flutter/material.dart';

class Screen_Twelve extends StatelessWidget {
  const Screen_Twelve({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: MyAppBar(
        showImage: false,
        iconName: Icons.arrow_back_ios_new_rounded,
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
              const Text('Personalised PE Lessons',
                  style: AppTexts.MyNormalText),
              const Text('Modalities', style: AppTexts.MyHeadingText),
              SizedBox(
                height: height * 0.025,
              ),
              MyFeature_S12(
                  color: const Color(0xff70BEB0),
                  title: 'Oxford Class A ',
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  instructorImageAddress: 'assets/images/image_7.png',
                  iconImageAddress: 'assets/icons/icon_2.png',
                  courseTime: '1x week 30 minutes',
                  numberOfLessons: '14 Lessons'),
              MyFeature_S12(
                  color: Color(0xff408FAD),
                  title: 'Oxford Class B ',
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  instructorImageAddress: 'assets/images/image_7.png',
                  iconImageAddress: 'assets/icons/icon_2.png',
                  courseTime: '2x week 30 minutes',
                  numberOfLessons: '14 Lessons'),
            ],
          ),
        ),
      ),
    );
  }
}

class MyFeature_S12 extends StatelessWidget {
  var color,
      title,
      description,
      instructorImageAddress,
      iconImageAddress,
      courseTime,
      numberOfLessons;

  MyFeature_S12(
      {super.key,
      required this.color,
      required this.title,
      required this.description,
      required this.instructorImageAddress,
      required this.iconImageAddress,
      required this.courseTime,
      required this.numberOfLessons});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.055, vertical: height * 0.0325),
      margin: EdgeInsets.only(bottom: height * 0.025),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Instructor',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffFFFFFF),
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(
                      width: width * 0.025,
                    ),
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage(
                        instructorImageAddress.toString(),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  title.toString(),
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xffFFFFFF),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  description.toString(),
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFFFFFF),
                      fontFamily: 'Poppins'),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    //using image for both the icons because I found icon for only one of them. so in order to make sure that both of them have same sizes/styles/layout, I've image for both
                    Image(
                      image: const AssetImage(
                        'assets/icons/icon_4.png',
                      ),
                      height: height * 0.02,
                    ),
                    SizedBox(width: width * 0.025),
                    Text(
                      courseTime.toString(),
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFFFFFF),
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.016,
                ),
                Row(
                  children: [
                    Image(
                      image: const AssetImage(
                        'assets/icons/icon_5.png',
                      ),
                      height: height * 0.02,
                    ),
                    SizedBox(width: width * 0.025),
                    Text(
                      numberOfLessons.toString(),
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFFFFFF),
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.015, vertical: height * 0.015),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffFFFFFF), width: 0.75),
              borderRadius: BorderRadius.circular(7),
            ),
            child: Image(
              height: height * 0.0225,
              image: AssetImage(
                'assets/icons/icon_3.png',
              ),
            ),
          )
        ],
      ),
    );
  }
}
