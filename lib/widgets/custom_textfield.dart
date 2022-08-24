import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Function(String)? onTap;
  Color borderColor;
  CustomTextField({
    Key? key,
    required this.controller,
    required this.borderColor,
    this.onTap,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onTap,
      controller: controller,
      onTap: () {},
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: borderColor),
        ),
      ),
    );
  }
}
