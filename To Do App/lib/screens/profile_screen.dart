import 'package:flutter/material.dart';
import 'package:to_do_app/screens/signin_screen.dart';
import '../clippers/wave_clipper.dart';
import '../componants/my_button.dart';
import '../componants/my_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.loose,
        alignment: AlignmentDirectional.topCenter,
        children: [
          ClipPath(
            clipper: WaveClipper(),
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 450,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 60, bottom: 20),
                    child: Text(
                      "Profile Page",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.blue[200],
                      child: const Icon(
                        Icons.person,
                        size: 180,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const MyCard(
                    icon: Icon(Icons.account_box),
                    title: "Bug Yateer",
                  ),
                  const MyCard(
                    icon: Icon(Icons.email_outlined),
                    title: "Bugyateer.cse@gmail.com",
                  ),
                  const MyCard(
                    icon: Icon(Icons.phone_android_outlined),
                    title: "+20 1111111111",
                  ),
                  const MyCard(
                    icon: Icon(Icons.facebook_outlined),
                    title: "/BugYateer.CSE",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: MyButton(
                        button_msg: "Log Out",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SigninScreen(),
                            ),
                          );
                        },
                        bgColor: Colors.blue,
                        fgColor: Colors.white,
                        padding: 15,
                        borderRadius: 30),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
