import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Task3Screen extends StatelessWidget {
  const Task3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              children: [
                SizedBox(height: 60.h),
                const FlutterLogoWidget(),
                SizedBox(height: 20.h),
                const SocialMediaIcons(),
                SizedBox(height: 20.h),
                const EmailPasswordFields(),
                SizedBox(height: 15.h),
                const ForgotPasswordText(),
                SizedBox(height: 25.h),
                const LoginButton(),
                SizedBox(height: 15.h),
                const SignUpText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Flutter logo and welcome text
class FlutterLogoWidget extends StatelessWidget {
  const FlutterLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const FlutterLogo(size: 60),
            SizedBox(width: 6.w,),
            Text("Flutter",style: TextStyle(fontSize: 40.sp, color: Colors.grey[500], fontWeight: FontWeight.bold) ,)
          ],
        ),
        SizedBox(height: 15.h),
        Text(
          'Welcome Back!',
          style: TextStyle(fontSize: 28.sp, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.h),
        Text(
          'Welcome back to the best. We’re always here, waiting for you!',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15.sp, color: Colors.white),
        ),
      ],
    );
  }
}

// Social media icons
class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.facebook, color: Colors.white, size: 40.w),
        SizedBox(width: 10.w),
        Icon(Icons.abc_outlined, color: Colors.white, size: 40.w),
        SizedBox(width: 10.w),
        Icon(Icons.account_tree_outlined, color: Colors.white, size: 40.w),
      ],
    );
  }
}

// Email and password input fields
class EmailPasswordFields extends StatefulWidget {
  const EmailPasswordFields({super.key});

  @override
  _EmailPasswordFieldsState createState() => _EmailPasswordFieldsState();
}

class _EmailPasswordFieldsState extends State<EmailPasswordFields> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextFormField(labelText: 'Email', icon: Icons.email_outlined),
        SizedBox(height: 15.h),
        CustomTextFormField(
          labelText: 'Password',
          icon: Icons.lock_outline,
          isPassword: true,
          isPasswordVisible: _isPasswordVisible,
          onVisibilityToggle: () {
            setState(() {
              _isPasswordVisible = !_isPasswordVisible;
            });
          },
        ),
      ],
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final bool isPassword;
  final bool isPasswordVisible;
  final VoidCallback? onVisibilityToggle;

  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.icon,
    this.isPassword = false,
    this.isPasswordVisible = false,
    this.onVisibilityToggle,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword && !isPasswordVisible,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: labelText,
        prefixIcon: Icon(icon, color: Colors.grey),
        suffixIcon: isPassword
            ? IconButton(
          icon: Icon(
            isPasswordVisible ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey,
          ),
          onPressed: onVisibilityToggle,
        )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}


// Forgot password text
class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        "Forgot Password?",
        style: TextStyle(
            decoration: TextDecoration.underline,
            decorationColor: Colors.grey,
            color: Colors.grey[500], fontSize: 15.sp, fontWeight: FontWeight.w400),
      ),
    );
  }
}

// Login button
class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 10.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.r),
        ),
      ),
      child: Text(
        'Login',
        style: TextStyle(color: Colors.blue, fontSize: 20.sp),
      ),
    );
  }
}

// Sign-up text
class SignUpText extends StatelessWidget {
  const SignUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Not have an account? ',
        style: TextStyle(color: Colors.white, fontSize: 15.sp),
        children: [
          TextSpan(
            text: 'Sign Up',
            style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue[100],color: Colors.blue[100], fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
