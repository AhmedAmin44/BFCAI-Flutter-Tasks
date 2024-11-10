import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Task2Screen extends StatelessWidget {
  const Task2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              SizedBox(height: 90.h),
              _buildProfileIcon(),
              SizedBox(height: 90.h),
              const CustomTextFormField(labelText: 'Email'),
              SizedBox(height: 30.h),
              const CustomTextFormField(labelText: 'Password', isPassword: true),
              SizedBox(height: 10.h),
              _buildForgotPasswordText(),
              SizedBox(height: 50.h),
              _buildSignUpText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileIcon() {
    return Center(
      child: CircleAvatar(
        radius: 80.w,
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.person,
          size: 180,
          color: Colors.white,
        ),
      ),
    );
  }


  Widget _buildForgotPasswordText() {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: () {
          print("Navigate to Forgot Password Screen to reset  it");
        },
        child: Text(
          "Forget Password ?",
          style: TextStyle(
            color: Colors.red,
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpText() {
    return const Align(
      alignment: Alignment.center,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Not a member ? ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "SignUp Now..",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatefulWidget {
  final String labelText;
  final bool isPassword;

  const CustomTextFormField({
    Key? key,
    required this.labelText,
    this.isPassword = false,
  }) : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword ? _isObscure : false,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: const TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(40),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(40),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
          icon: Icon(
            _isObscure ? Icons.visibility_off : Icons.visibility,
            color: Colors.black,
          ),
          onPressed: () => setState(() => _isObscure = !_isObscure),
        )
            : null,
      ),
    );
  }
}
