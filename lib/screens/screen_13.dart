import 'package:arsalan_project_3/components/my_app_bar.dart';
import 'package:arsalan_project_3/constants/app_texts.dart';
import 'package:arsalan_project_3/constants/default_padding.dart';
import 'package:flutter/material.dart';

class Screen_Thirteen extends StatelessWidget {
  const Screen_Thirteen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
        appBar: MyAppBar(
          showImage: false,
          iconName: Icons.arrow_back_ios_new_rounded,
        ),
        body: DefaultTabController(
          length: 3,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * MyPadding.scaffoldBodyPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Text('Tip of the Week', style: AppTexts.MyNormalText),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  const Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  TabBar(
                    padding: EdgeInsets.zero,
                    dividerColor: Colors.transparent,
                    tabs: [
                      MyTabBarItem(
                        title: 'Advocacy ',
                      ),
                      MyTabBarItem(
                        title: 'Teaching ',
                      ),
                      MyTabBarItem(
                        title: 'Parenting ',
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //arsalan
                      Container(
                        height: height * 0.45,
                        color: Colors.indigo,
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Text(
                        'PE Teaching Fundamental',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                          color: Color(0xff163B61),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.0175,
                      ),

                      Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                        ),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class MyTabBarItem extends StatelessWidget {
  String title;
  MyTabBarItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.025, vertical: height * 0.0125),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Color(0xffEEEEEE),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.black,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
