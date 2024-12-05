import 'package:flutter/material.dart';
import '../componants/my_button.dart';
import '../screens/signin_screen.dart';
import '../screens/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fullscreen background image
          SizedBox.expand(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          // Content overlay
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                        text: 'Welcome! 👋\n',
                        style: TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.w600,
                        )),
                    TextSpan(
                        text:
                        "\nExplore, Connect, and Enjoy a seamless experience. Let's get started!",
                        style: TextStyle(
                          fontSize: 25,
                          // height: 0,
                        ))
                  ],
                ),
              ),
            ),
          ),
          // Buttons at the bottom
          const Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // Space between buttons
              children: [
                Expanded(
                  child: MyButton(
                    button_msg: 'Sign In',
                    button_icon: Icon(Icons.login),
                    onPressed: SigninScreen(),
                    bgColor: Colors.transparent,
                    fgColor: Colors.blue,
                    padding: 20,
                    borderRadius: 50,
                  ),
                ),
                Expanded(
                  child: MyButton(
                    button_msg: 'Sign Up',
                    button_icon: Icon(Icons.account_box),
                    onPressed: SignupScreen(),
                    bgColor: Colors.blue,
                    fgColor: Colors.white,
                    padding: 20,
                    borderRadius: 50,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
