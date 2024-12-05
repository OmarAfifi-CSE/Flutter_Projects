import 'package:flutter/material.dart';
import '../componants/my_button.dart';
import '../componants/my_textfield.dart';

// text editing controllers
final usernameController = TextEditingController();
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
                        height: 300,
                      ),

                      // Welcome back message
                      const Text(
                        "Welcome back! We’ve missed you.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),

                      // Username TextField
                      MyTextfield(
                        controller: usernameController,
                        hintText: 'Username',
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
                        height: 10,
                      ),

                      // Forget password
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
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
                        padding: 15,
                        borderRadius: 30,
                      ),
                      const SizedBox(
                        height: 50,
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

                      // Google + Facebook buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Google button
                          Image.asset(
                            'assets/images/Google_Logo.png',
                            height: 72,
                          ),
                          const SizedBox(width: 20),
                          Image.asset(
                            'assets/images/Facebook_Logo.png',
                            height: 46,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      // Not a member? Register now
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Not a member?',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 4),
                          Text(
                            'Register Now',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
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
