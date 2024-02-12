import 'package:arsalan_project_3/components/my_app_bar.dart';
import 'package:arsalan_project_3/constants/app_texts.dart';
import 'package:arsalan_project_3/constants/default_padding.dart';
import 'package:flutter/material.dart';

class Screen_Sixteen extends StatelessWidget {
  const Screen_Sixteen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: MyAppBar(
        imageAddress: 'assets/icons/icon_1.png',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * MyPadding.scaffoldBodyPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.01,
              ),
              const Text('Select a Category', style: AppTexts.MyNormalText),
              const Text('Home', style: AppTexts.MyHeadingText),
              SizedBox(
                height: height * 0.025,
              ),
              Row(
                children: [
                  Expanded(
                    child: MyFeature_S16(
                        imageAddress: 'assets/images/image_2.png',
                        title: 'Free Live Webinars',
                        description:
                            'For Teachers/Administration/Parents - Wednesdays'),
                  ),
                  SizedBox(
                    width: width * 0.075,
                  ),
                  Expanded(
                    child: MyFeature_S16(
                        imageAddress: 'assets/images/image_3.png',
                        title: 'Teacher Training',
                        description:
                            'Add to your bag of tricks. For teachers - 75 min recorded presentations'),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.0175,
              ),
              Row(
                children: [
                  Expanded(
                    child: MyFeature_S16(
                        imageAddress: 'assets/images/image_4.png',
                        title: 'Professional Development for schools',
                        description:
                            'Carrie’s consulting and coaching for schools'),
                  ),
                  SizedBox(
                    width: width * 0.075,
                  ),
                  Expanded(
                    child: MyFeature_S16(
                        imageAddress: 'assets/images/image_5.png',
                        title: 'Personalised PE lessons',
                        description: 'All Ages & Populations'),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.0175,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03, vertical: height * 0.0175),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffECECEC),
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 7,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: height * 0.015,
                          ),
                          Text(
                            'Tip of the week',
                            style: const TextStyle(
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              color: Color(0xff000000),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur elit.',
                            style: const TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Image(
                        image: AssetImage(
                          'assets/images/image_6.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyFeature_S16 extends StatelessWidget {
  var imageAddress, title, description;

  MyFeature_S16(
      {super.key,
      required this.imageAddress,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.03, vertical: height * 0.0175),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffECECEC),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(
                imageAddress.toString(),
              ),
            ),
            //wrapping the following widgets in padding because figma design shows some space on the left side of the text.
            //The text is not aligned with the image.
            Padding(
              padding: EdgeInsets.only(left: width * 0.025),
              child: Column(
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
                      color: Color(0xff000000),
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
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
