import 'package:flutter/material.dart';
import 'package:screens/componants/my_button.dart';
import 'package:screens/componants/my_textfield.dart';
import 'package:screens/screens/signin_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        // Fullscreen background image
        SizedBox.expand(
          child: Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
          ),
        ),
        SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Sign Up.png',
                      height: 250,
                    ),
                    const Text(
                      "Create a new account!\n Let's get you started.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const MyTextfield(
                        hintText: "First Name", obscureText: false),
                    const SizedBox(
                      height: 15,
                    ),
                    const MyTextfield(
                        hintText: "Last Name", obscureText: false),
                    const SizedBox(
                      height: 15,
                    ),
                    const MyTextfield(hintText: "Email", obscureText: false),
                    const SizedBox(
                      height: 15,
                    ),
                    const MyTextfield(hintText: "Password", obscureText: true),
                    const SizedBox(
                      height: 15,
                    ),
                    const MyTextfield(
                        hintText: "Confirm Password", obscureText: true),
                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        children: [
                          Expanded(
                            child: MyButton(
                              button_msg: "Sign up",
                              button_icon: Icon(Icons.account_box),
                              bgColor: Colors.blue,
                              fgColor: Colors.white,
                              padding: 10,
                              borderRadius: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already a member?',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 4),
                        InkWell(
                          onTap: () {
                            // Navigate to the next screen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SigninScreen()),
                            );
                          },
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
