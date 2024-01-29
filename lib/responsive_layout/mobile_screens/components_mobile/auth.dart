import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final Function()? onTap;
  const AuthButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
            color: const Color.fromARGB(235, 29, 145, 195),
            borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text(
          'Sign in',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
