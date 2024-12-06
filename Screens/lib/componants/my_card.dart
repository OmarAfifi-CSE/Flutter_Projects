import 'package:flutter/material.dart';



class MyCard extends StatelessWidget {

  final Color? backgroundColor;
  final Color? iconColor;
  final Color? textColor;
  final Icon icon;
  final String title;


  const MyCard({
    super.key,
    this.backgroundColor,
    this.iconColor,
    this.textColor,
    required this.icon,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        color: backgroundColor ?? Colors.white70,
        child: ListTile(
          leading: icon,
          title: Text(title),
          titleTextStyle: TextStyle(fontSize: 18),
          textColor: textColor ?? Colors.black45,
          iconColor:iconColor ?? Colors.blue[600],
        ),
      ),
    );
  }
}
