import 'package:arsalan_project_3/components/my_app_bar.dart';
import 'package:arsalan_project_3/components/my_button.dart';
import 'package:arsalan_project_3/constants/app_texts.dart';
import 'package:flutter/material.dart';

class Screen_Three extends StatelessWidget {
  const Screen_Three({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: MyAppBar(
        showImage: false,
        iconName: Icons.arrow_back_ios_new_rounded,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            const Text('Terms of Service', style: AppTexts.MyHeadingText),
            SizedBox(
              height: height * 0.008,
            ),
            const Text('Last Updated July 28, 2022',
                style: AppTexts.MyNormalText),
            SizedBox(
              height: height * 0.008,
            ),
            const Text(
                'Please read these terms and conditions carefully before',
                style: AppTexts.MyParagraphText),
            SizedBox(
              height: height * 0.025,
            ),
            Text(
              'Acknowledgement',
              style: AppTexts.MySubHeadingText,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Expanded(
              child: ListView(
                children: [
                  Text(
                    '.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse.  cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum  Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet   consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur',
                    textAlign: TextAlign.start,
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Align(
              alignment: Alignment.center,
              child: MyButton(
                title: 'Accept',
              ),
            ),
            Container(
              height: height * 0.075,
              width: double.infinity,
              child: Center(
                child: Container(
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                      color: Color(0xff408FAD),
                    )),
                  ),
                  child: Text(
                    'Decline',
                    style: TextStyle(
                      fontSize: 14,
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
            SizedBox(
              height: height * 0.005,
            )
          ],
        ),
      ),
    );
  }
}
