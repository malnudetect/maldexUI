import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final dynamic controller;
  final String hintText;
  final bool obscureText;
  final IconData icon;
  final TextInputType keyboardType;

  const MyTextField(
      {super.key,
      required this.keyboardType,
      required this.icon,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          prefixIconColor: const Color.fromARGB(235, 29, 145, 195),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 201, 248, 255))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(
                color: Color.fromARGB(235, 29, 145, 195),
              )),
          hintText: hintText,
          contentPadding: const EdgeInsets.symmetric(vertical: 18.0),
          hintStyle: TextStyle(
              color: Colors.grey.shade400, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
