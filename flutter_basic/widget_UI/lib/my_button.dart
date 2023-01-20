import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color bgColor;
  final String text;
  final Color textColor;
  const MyButton({
    super.key,
    required this.bgColor,
    required this.text,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 22,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
