import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 20,
          title: const Text(
            "Gallery",
            style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          centerTitle: true,
          leading: Icon(Icons.menu, color: Colors.black),
          actions: const [
            Icon(Icons.settings, color: Colors.black),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white38,
            borderRadius: BorderRadius.circular(50),
          ),
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                height: 75,
                width: 400,
                margin: EdgeInsets.all(10),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    title: const Text(
                      "Foot Ball",
                      style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {},
                  ),
                ),
              ),
              Container(
                height: 75,
                width: 400,
                margin: EdgeInsets.all(10),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    title: const Text(
                      "Aboutrika ",
                      style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {},
                  ),
                ),
              ),
              Container(
                height: 75,
                width: 400,
                margin: EdgeInsets.all(10),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    title: const Text(
                      "Nature",
                      style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {},
                  ),
                ),
              ),
              Container(
                height: 75,
                width: 400,
                margin: EdgeInsets.all(10),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    title: const Text(
                      "Mountains",
                      style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {},
                  ),
                ),
              ),
              Container(
                height: 75,
                width: 400,
                margin: EdgeInsets.all(10),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    title: const Text(
                      "Empty",
                      style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
