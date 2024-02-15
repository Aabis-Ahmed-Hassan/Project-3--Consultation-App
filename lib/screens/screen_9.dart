import 'package:arsalan_project_3/components/my_app_bar.dart';
import 'package:arsalan_project_3/constants/app_texts.dart';
import 'package:arsalan_project_3/constants/default_padding.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Screen_Nine extends StatelessWidget {
  const Screen_Nine({super.key});

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
        //wrapping padding widget with column because in the bottom (under last week's webinar), the scrollable widget has zero padding on right side.
        child: Column(
          children: [
            Padding(
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

                  const Text(
                    'Coming up this week',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontFamily: 'Poppins',
                    ),
                  ),

                  SizedBox(
                    height: height * 0.015,
                  ),
                  //arsalan
                  Container(
                    height: height * 0.45,
                    color: Colors.indigo,
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Last week's webinar",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins'),
                      ),
                      Text(
                        'View All >',
                        style: TextStyle(
                          color: Color(0xff163B61),
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.025,
                  ),
                ],
              ),
            ),
            //shows scrollable widget under 'last week's webinar' text
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * MyPadding.scaffoldBodyPadding),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MyWebinar(
                        title: 'Digital Marketing',
                        date: 'Feb 07 , 2022',
                        time: 'Minute 25 : 13'),
                    MyWebinar(
                        title: 'Digital Marketing',
                        date: 'Feb 07 , 2022',
                        time: 'Minute 25 : 13'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyWebinar extends StatelessWidget {
  String title, date, time;
  MyWebinar({
    super.key,
    required this.title,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.03, vertical: height * 0.0175),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xffECECEC),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    height: height * 0.16,
                    image: AssetImage(
                      'assets/images/image_16.png',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(width * 0.037),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Center(
                    child: Image(
                        image: AssetImage(
                      'assets/icons/icon_9.png',
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: width * 0.025,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.015,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(
                      width: width * 0.025,
                    ),
                    Icon(Icons.menu)
                  ],
                ),
                SizedBox(
                  height: height * 0.0075,
                ),
                Text(
                  date,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                  ),
                ),
                SizedBox(
                  height: height * 0.0275,
                ),
                Text(
                  time,
                  style: TextStyle(
                    color: Color(0xff408FAD),
                    fontFamily: 'Poppins',
                    fontSize: 9,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                LinearPercentIndicator(
                  padding: EdgeInsets.zero,
                  width: width * 0.375,
                  lineHeight: height * 0.008,
                  percent: 0.3,
                  backgroundColor: Color(0xffE5EBEB),
                  progressColor: Color(0xff70BEB0),
                  barRadius: Radius.circular(15),
                )
              ],
            )
          ],
        ));
  }
}
