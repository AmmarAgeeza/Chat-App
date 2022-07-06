import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
 final  String title;
  VoidCallback? onTap;

    CustomButton({Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
        ),
        child: Center(
            child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
