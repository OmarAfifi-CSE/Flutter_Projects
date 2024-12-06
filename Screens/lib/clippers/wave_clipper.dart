import 'package:flutter/cupertino.dart';

class WaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 150);
    path.quadraticBezierTo(
        size.width/2,
        size.height,
        size.width,
        150
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}