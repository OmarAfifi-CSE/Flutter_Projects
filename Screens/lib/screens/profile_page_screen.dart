import 'package:flutter/material.dart';
import 'package:screens/clippers/wave_clipper.dart';
import 'package:screens/componants/my_button.dart';
import 'package:screens/componants/my_card.dart';

class ProfilePageScreen extends StatelessWidget {
  const ProfilePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        alignment: AlignmentDirectional.topCenter,
        children: [
          SizedBox.expand(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          ClipPath(
            clipper: WaveClipper(),
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.blue[300],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60, bottom: 20),
                    child: Text(
                      "Profile Page",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[1500]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.blue[200],
                      child: const Icon(
                        Icons.person,
                        size: 150,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
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
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: MyButton(
                        button_msg: "Edit profile",
                        button_icon: Icon(Icons.edit),
                        bgColor: Colors.blue,
                        fgColor: Colors.white,
                        padding: 15,
                        borderRadius: 30),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
