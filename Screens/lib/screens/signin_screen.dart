import 'package:flutter/material.dart';
import 'package:screens/screens/signup_screen.dart';
import '../componants/my_button.dart';
import '../componants/my_textfield.dart';

// text editing controllers
final emailController = TextEditingController();
final passwordController = TextEditingController();

// sign user in
void signUseIn() {}

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: [
          // Full-screen background image
          SizedBox.expand(
            child: Image.asset(
              'assets/images/background.png', // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          // Main content overlay
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      // Icon
                      Image.asset(
                        'assets/images/Sign In.png',
                        height: 250,
                      ),

                      // Welcome back message
                      const Text(
                        textAlign: TextAlign.center,
                        "Welcome back!\n We’ve missed you.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      // Username TextField
                      MyTextfield(
                        controller: emailController,
                        hintText: 'Email',
                        obscureText: false,
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      // Password TextField
                      MyTextfield(
                        controller: passwordController,
                        hintText: 'Password',
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 7,
                      ),

                      // Forget password
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Forget Password',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),

                      // Sign in button
                      const MyButton(
                          button_msg: 'Sign In',
                          button_icon: Icon(Icons.login),
                          bgColor: Colors.blue,
                          fgColor: Colors.white,
                          onPressed: null,
                          padding: 12,
                          borderRadius: 12,
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      // Or continue with divider
                      const Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: Colors.white70,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'Or Continue with',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),

                      // Google + Facebook buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Google button
                          Image.asset(
                            'assets/images/Google_Logo.png',
                            height: 48,
                          ),
                          const SizedBox(width: 20),
                          Image.asset(
                            'assets/images/Facebook_Logo.png',
                            height: 46,
                          ),
                          const SizedBox(width: 20),
                          Image.asset(
                            'assets/images/X_Logo.png',
                            height: 46,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      // Not a member? Register now
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Not a member?',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 4),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupScreen()),
                              );
                            },
                            child: const Text(
                              'Register Now',
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
        ],
      ),
    );
  }
}
