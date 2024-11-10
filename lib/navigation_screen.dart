import 'package:first_assignment/assignment1/view.dart';
import 'package:first_assignment/assignment2/view.dart';
import 'package:first_assignment/assignment3/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Navigation between 3 Screens',style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold),),
            SizedBox(height: 50.h,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Task1Screen()),
                );
              },
              child: const Text('Go to Screen 1'),
            ),
            SizedBox(height: 10.h),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Task2Screen()),
                );
              },
              child: const Text('Go to Screen 2'),
            ),
            SizedBox(height: 10.h),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Task3Screen()),
                );
              },
              child: const Text('Go to Screen 3'),
            ),
          ],
        ),
      ),
    );
  }
}
