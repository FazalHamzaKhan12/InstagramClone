import 'package:flutter/material.dart';
import 'package:instagram_clone/Screen/Login/loginscreen.dart';
import 'package:instagram_clone/Widgets/ui_helper.dart';

class Signupscreen extends StatelessWidget {
  Signupscreen({super.key});

  final TextEditingController emailofSignup = TextEditingController();
  final TextEditingController passofSignup = TextEditingController();
  final TextEditingController userNameofSignup = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customImages(imgurl: 'logo.png'),
            const SizedBox(height: 20), // Added const
            UiHelper.customTextFeild(
              controller: emailofSignup,
              text: "Email",
              tohide: false,
              textinputtype: TextInputType.text,
            ),
            const SizedBox(height: 15), // Added const
            UiHelper.customTextFeild(
              controller: passofSignup,
              text: "Password",
              tohide: true,
              textinputtype: TextInputType.text,
            ),
            const SizedBox(height: 15), // Added const
            UiHelper.customTextFeild(
              controller: userNameofSignup,
              text: "UserName",
              tohide: false,
              textinputtype: TextInputType.text,
            ),
            const SizedBox(height: 25), // Added const
            UiHelper.CustomButton(
              callback: () {
                // Add your signup logic here
              },
              buttonName: "Sign in",
            ),
            const SizedBox(height: 35), // Added const
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already Have an Account?'), // Added const
                const SizedBox(width: 2), // Added const
                UiHelper.CustomTextButton(
                  text: "Login",
                  callback: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Loginscreen(),
                      ),
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
