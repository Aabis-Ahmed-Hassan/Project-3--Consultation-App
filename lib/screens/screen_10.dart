import 'package:arsalan_project_3/components/my_app_bar.dart';
import 'package:arsalan_project_3/components/my_button.dart';
import 'package:arsalan_project_3/constants/app_texts.dart';
import 'package:arsalan_project_3/constants/default_padding.dart';
import 'package:flutter/material.dart';

class Screen_Ten extends StatelessWidget {
  const Screen_Ten({super.key});

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
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                decoration: BoxDecoration(
                  color: const Color(0xff6FB489),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Stack(
                  children: [
                    Image(
                      height: height * 0.2,
                      fit: BoxFit.fill,
                      image: const AssetImage('assets/images/image_10.png'),
                    ),
                    Positioned(
                        top: height * 0.04,
                        right: width * 0.01,
                        child: Image(
                            height: height * 0.03,
                            image: const AssetImage(
                                'assets/images/image_11.png'))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          height: height * 0.25,
                          image: const AssetImage('assets/images/image_9.png'),
                        ),
                        Expanded(
                          child: RichText(
                            text: const TextSpan(children: [
                              TextSpan(
                                text: 'PE\nTeaching\nFundamental',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              //using this textspan as we can't use sizedbox here
                              TextSpan(
                                text: '\n\n',
                              ),

                              TextSpan(
                                text: 'By Carrie Flint',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const Text(
                'PE Teaching \nFundamental',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff163B61),
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(
                height: height * 0.0225,
              ),
              const Text(
                'Description',
                style: AppTexts.MySubHeadingText,
              ),
              SizedBox(
                height: height * 0.015,
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                        text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim',
                        style: AppTexts.MyParagraphText),
                    TextSpan(
                      text: 'Read More',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        color: Color(0xff408FAD),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              const Text(
                'Lessons',
                style: AppTexts.MySubHeadingText,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              MyLesson(title: 'What is Digital Marketing?', time: '2 Hours'),
              MyLesson(
                  title: 'Fundamentals of Digital Market..',
                  time: '1 Hour 27 min'),
              SizedBox(
                height: height * 0.02,
              ),
              MyButton(title: 'Schedule A Call'),
              SizedBox(
                height: height * 0.035,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLesson extends StatelessWidget {
  var title, time;
  MyLesson({super.key, required this.title, required this.time});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Container(
      margin: EdgeInsets.only(bottom: height * 0.025),
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.05, vertical: height * 0.02),
      decoration: BoxDecoration(
        color: const Color(0xffE5F1EA),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: width * 0.08,
            backgroundColor: const Color(0xffB0E1C4),
            child: Center(
              child: CircleAvatar(
                  radius: width * 0.045,
                  backgroundColor: const Color(0xff70BEB0),
                  child: const Center(
                    child: Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                    ),
                  )),
            ),
          ),
          SizedBox(
            width: width * 0.05,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'What is Digital Marketing?',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.watch_later_outlined,
                    color: Color(0xff408FAD),
                    size: 18,
                  ),
                  SizedBox(
                    width: width * 0.025,
                  ),
                  Text(
                    time.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: Color(0xff89918C),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
