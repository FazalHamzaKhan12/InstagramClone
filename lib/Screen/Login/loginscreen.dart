import 'package:flutter/material.dart';
import 'package:instagram_clone/Screen/MianPage/bottomnavigator.dart';
import 'package:instagram_clone/Screen/SignScreen/signupscreen.dart';
import 'package:instagram_clone/Widgets/ui_helper.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            UiHelper.customImages(imgurl: "logo.png"),
            const SizedBox(height: 30),

            // Email Text Field
            UiHelper.customTextFeild(
              controller: emailController,
              text: "Email",
              tohide: false,
              textinputtype: TextInputType.text,
            ),
            const SizedBox(height: 15),

            // Password Text Field
            UiHelper.customTextFeild(
              controller: passController,
              text: "Password",
              tohide: true,
              textinputtype: TextInputType.text,
            ),
            const SizedBox(height: 16),

            // Forgot Password
            const Padding(
              padding: EdgeInsets.only(left: 230),
              child: Text(
                "Forget password?",
                style: TextStyle(color: Color(0xff3797EF)),
              ),
            ),
            const SizedBox(height: 20),

            // Login Button
            UiHelper.CustomButton(
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BottomNav()),
                );
              },
              buttonName: "Log in",
            ),
            const SizedBox(height: 30),

            // Login with Facebook
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customImages(imgurl: 'icon.png'),
                const SizedBox(width: 10),
                const Text(
                  'Log in with Facebook',
                  style: TextStyle(
                      color: Color(0xff3797EF), fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Divider with OR
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.2,
                    indent: 10,
                    endIndent: 10,
                  ),
                ),
                Text(
                  "OR",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.2,
                    indent: 10,
                    endIndent: 10,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Sign Up Option
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don’t have an account?',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      fontSize: 14),
                ),
                const SizedBox(width: 4),
                UiHelper.CustomTextButton(
                  text: "Sign Up",
                  callback: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Signupscreen()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
