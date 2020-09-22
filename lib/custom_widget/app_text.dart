import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  double size;
  Color color;
  String text;
  AppText (this.size, this.color, this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
          text,
          style: TextStyle(fontSize: size, fontFamily: 'Poppins', color: color),
      ),
    );
  }
}

