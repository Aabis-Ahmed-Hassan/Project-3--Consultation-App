import 'package:arsalan_project_3/screens/screen_16.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MoveToScreen(title: 'Screen 16', shiftToScreen: Screen_Sixteen())
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
