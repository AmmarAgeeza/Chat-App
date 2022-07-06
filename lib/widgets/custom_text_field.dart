import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  String hintText;
  Function(String)? onChanged;

  // String? Function(String?)? validator;

  CustomTextFormField({
    Key? key,
    required this.hintText,
    this.onChanged,
    //this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // validator: validator,
      validator: (data){
        if(data!.isEmpty){
          return 'field is required';
        }
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
