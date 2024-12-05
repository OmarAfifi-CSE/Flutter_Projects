import 'package:flutter/material.dart';

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

        ],
      ),
    );
  }
}
