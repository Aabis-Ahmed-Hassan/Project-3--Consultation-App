import 'package:arsalan_project_3/components/my_app_bar.dart';
import 'package:arsalan_project_3/constants/app_texts.dart';
import 'package:arsalan_project_3/constants/default_padding.dart';
import 'package:flutter/material.dart';

class Screen_Eleven extends StatelessWidget {
  const Screen_Eleven({super.key});

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
              const Text('Consulting for Schools',
                  style: AppTexts.MyNormalText),
              const Text('Modalities', style: AppTexts.MyHeadingText),
              SizedBox(
                height: height * 0.025,
              ),
              Row(
                children: [
                  Expanded(
                    child: MyFeature_S11(
                      imageAddress: 'assets/icons/icon_3.png',
                      title: '1 Hour Staff Meeting',
                      description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      color: Color(0xff408FAD),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.075,
                  ),
                  Expanded(
                    child: MyFeature_S11(
                      imageAddress: 'assets/icons/icon_3.png',
                      title: 'Half Day',
                      description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      color: Color(0xff70BEB0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.0175,
              ),
              Row(
                children: [
                  Expanded(
                    child: MyFeature_S11(
                      imageAddress: 'assets/icons/icon_3.png',
                      title: 'Full Day',
                      description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      color: Color(0xff163B61),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.075,
                  ),
                  Expanded(
                    child: MyFeature_S11(
                      imageAddress: 'assets/icons/icon_3.png',
                      title: 'Ongoing Consulting',
                      description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      color: Color(0xff6FB489),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyFeature_S11 extends StatelessWidget {
  var imageAddress, title, description;

  var color;
  MyFeature_S11({
    super.key,
    required this.imageAddress,
    required this.title,
    required this.description,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.0325, vertical: height * 0.0325),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.015, vertical: height * 0.015),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffFFFFFF), width: 0.75),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Image(
                  height: height * 0.0225,
                  image: AssetImage(
                    imageAddress.toString(),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: height * 0.015,
                ),
                Text(
                  title.toString(),
                  style: const TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  description.toString(),
                  style: const TextStyle(
                    fontSize: 10,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
