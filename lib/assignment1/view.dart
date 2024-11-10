import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Task1Screen extends StatelessWidget {
  const Task1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 100.h),
          child: Column(
            children: [
              const TextWidget(
                text: "Parchis Colors :",
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 70.h),
              _buildColorRow(
                const ContainerColor(varColor: Colors.red, text: "Red Color"),
                const ContainerColor(varColor: Colors.yellow, text: "Yellow Color"),
              ),
              _buildColorRow(
                const ContainerColor(varColor: Colors.green, text: "Green Color"),
                const ContainerColor(varColor: Colors.blue, text: "Blue Color"),
              ),
              SizedBox(height: 70.h),
              const TextWidget(
                text: "¿What's your favorite color?",
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildColorRow(ContainerColor color1, ContainerColor color2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [color1, color2],
    );
  }
}

class ContainerColor extends StatelessWidget {
  final Color varColor;
  final String text;

  const ContainerColor({
    super.key,
    required this.varColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 180.w,
      color: varColor,
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 25.sp,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  const TextWidget({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize.sp,
          color: Colors.black,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
