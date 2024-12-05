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
                    const SizedBox(height: 30,),
                    const MyTextfield(hintText: "Email", obscureText: false),
                    const SizedBox(height: 30,),
                    const MyTextfield(hintText: "User Name", obscureText: false),
                    const SizedBox(height: 30,),
                    const MyTextfield(hintText: "password", obscureText: false),
                    const SizedBox(height: 30,),
                    const MyTextfield(hintText: "confirm password", obscureText: false),
                    const SizedBox(height: 50,),
                    const Row(
                      children: [
                        SizedBox(width: 100,),
                         Expanded(
                           child: MyButton(
                            button_msg: "Sign up",
                            button_icon: Icon(Icons.account_box),
                            bgColor: Colors.blue,
                            fgColor: Colors.white,
                            padding: 20,
                            borderRadius: 30,
                           ),
                         ),
                        SizedBox(width: 100,),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "already hava an acount?",
                          style: TextStyle(color: Colors.white),
                        ),

                        MaterialButton(
                            onPressed: (){
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (e) => SigninScreen(),
                                ),
                              );
                            },
                          child: const Text(
                            "sign in",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    )
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
