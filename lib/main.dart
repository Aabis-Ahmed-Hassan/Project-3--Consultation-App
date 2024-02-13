import 'package:arsalan_project_3/screens/screen_11.dart';
import 'package:arsalan_project_3/screens/screen_12.dart';
import 'package:arsalan_project_3/screens/screen_14.dart';
import 'package:arsalan_project_3/screens/screen_15.dart';
import 'package:arsalan_project_3/screens/screen_16.dart';
import 'package:arsalan_project_3/screens/screen_2.dart';
import 'package:arsalan_project_3/screens/screen_20.dart';
import 'package:arsalan_project_3/screens/screen_27.dart';
import 'package:arsalan_project_3/screens/screen_3.dart';
import 'package:arsalan_project_3/screens/screen_5.dart';
import 'package:arsalan_project_3/screens/screen_6.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MoveToScreen(
                      title: 'Screen 3', shiftToScreen: const Screen_Three()),
                  MoveToScreen(
                      title: 'Screen 27',
                      shiftToScreen: const Screen_Twenty_Seven()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MoveToScreen(
                      title: 'Screen 15',
                      shiftToScreen: const Screen_Fifteen()),
                  MoveToScreen(
                      title: 'Screen 14',
                      shiftToScreen: const Screen_Fourteen()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MoveToScreen(
                      title: 'Screen 12', shiftToScreen: const Screen_Twelve()),
                  MoveToScreen(
                      title: 'Screen 14',
                      shiftToScreen: const Screen_Fourteen()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MoveToScreen(
                      title: 'Screen 6', shiftToScreen: const Screen_Six()),
                  MoveToScreen(
                      title: 'Screen 11', shiftToScreen: const Screen_Eleven()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MoveToScreen(
                      title: 'Screen 5', shiftToScreen: const Screen_Five()),
                  MoveToScreen(
                      title: 'Screen 16',
                      shiftToScreen: const Screen_Sixteen()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MoveToScreen(
                      title: 'Screen 20', shiftToScreen: const Screen_Twenty()),
                  MoveToScreen(
                      title: 'Screen 2', shiftToScreen: const Screen_Two()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MoveToScreen extends StatelessWidget {
  MoveToScreen({
    super.key,
    required this.title,
    required this.shiftToScreen,
  });

  var title;
  var shiftToScreen;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => shiftToScreen));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        width: 150,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            title.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
