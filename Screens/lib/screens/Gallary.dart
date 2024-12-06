import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Gallery"
            ,style: TextStyle(
              fontSize:30,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold
          ),
            textAlign: TextAlign.center,),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(15),
          child: GridView.count(
            crossAxisCount: 2,
            children: [

              Container(
                margin: EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "images/img1.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                margin: EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "images/img2.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                margin: EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "images/img3.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                margin: EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "images/img1.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                margin: EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "images/img2.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                margin: EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "images/img3.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                margin: EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "images/img1.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                margin: EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "images/img2.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                margin: EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "images/img3.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                margin: EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "images/img1.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                margin: EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "images/img2.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                margin: EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "images/img3.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                margin: EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "images/img1.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                margin: EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "images/img2.jpg",
                  fit: BoxFit.cover,
                ),
              ),Container(
                margin: EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "images/img3.jpg",
                  fit: BoxFit.cover,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

}