import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String title;

  CustomButton({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
      ),
      child: Center(
          child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}
