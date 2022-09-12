import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String text;
  Color color;
  VoidCallback onpress;

  Button(
      {Key? key,
      required this.text,
      required this.color,
      required this.onpress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onpress,
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
