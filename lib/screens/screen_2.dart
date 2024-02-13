import 'package:arsalan_project_3/components/my_app_bar.dart';
import 'package:arsalan_project_3/constants/app_texts.dart';
import 'package:arsalan_project_3/constants/default_padding.dart';
import 'package:flutter/material.dart';

class Screen_Two extends StatelessWidget {
  const Screen_Two({super.key});

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
                height: height * 0.04,
              ),
              const Text('FAQ', style: AppTexts.MyHeadingText),
              SizedBox(
                height: height * 0.025,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05, vertical: height * 0.02),
                decoration: BoxDecoration(
                  color: const Color(0xffE5F1EA),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '1. How can I post a request?',
                          style: AppTexts.MyParagraphText,
                        ),
                        Container(
                          padding: EdgeInsets.all(width * 0.01),
                          decoration: BoxDecoration(
                            color: const Color(0xff70BEB0),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.keyboard_arrow_up,
                              color: Colors.white,
                              size: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in',
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xff89918C),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              MyFAQ(
                title:
                '2. Lorem ipsum dolor sit amet, adipiscing elit, sed do eiusmod tempor incididunt',
              ),
              MyFAQ(
                title: '3. Lorem ipsum dolor sit amet, adipiscing elit, sed ?',
              ),
              MyFAQ(
                title: '3. Lorem ipsum dolor sit amet, adipiscing elit, sed ?',
              ),
              MyFAQ(
                title: '3. Lorem ipsum dolor sit amet, adipiscing elit, sed ?',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyFAQ extends StatelessWidget {
  var title;
  MyFAQ({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Container(
      margin: EdgeInsets.only(bottom: height * 0.0275),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffECECEC),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.05, vertical: height * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title.toString(),
              style: AppTexts.MyParagraphText,
            ),
          ),
          SizedBox(
            width: width * 0.005,
          ),
          Container(
            padding: EdgeInsets.all(width * 0.01),
            decoration: BoxDecoration(
              color: const Color(0xffF5F5F5),
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Center(
              child: Icon(
                Icons.keyboard_arrow_down,
                color: Color(0xff408FAD),
                size: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
