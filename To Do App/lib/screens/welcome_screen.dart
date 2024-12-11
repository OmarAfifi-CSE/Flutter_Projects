import 'package:flutter/material.dart';
import 'package:to_do_app/screens/signin_screen.dart';
import '../componants/my_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Content overlay
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      // Icon
                      Image.asset(
                        'assets/images/todo_image.png',
                        height: 360,
                      ),
                      const SizedBox(
                        height: 60,
                      ),

                      // Welcome back message
                      const Text.rich(
                        TextSpan(
                          text: "Simplify, Organize, and Conquer ",
                          // Normal text
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: "Your Day\n", // Highlighted text
                              style: TextStyle(
                                color: Colors.blue,
                                height: 2
                              ),
                            ),
                            TextSpan(
                              text:
                                  "Take control of your tasks and \nachieve your goals.",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.normal
                              )
                            )
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 80,
                      ),

                      // Sign in button

                      MyButton(
                        button_msg: "Get Started",
                        bgColor: Colors.blue,
                        fgColor: Colors.white,
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (e) => const SigninScreen(),
                            ),
                          );
                        },
                        padding: 15,
                        borderRadius: 50,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
