import 'package:flutter/material.dart';
class Mytextfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const Mytextfield({super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,

  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Material(
        elevation: 5,
        shadowColor: Colors.yellowAccent,
        child: TextField(

          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white,
                  )
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide:BorderSide(color: Colors.deepPurple,)
              ),
              fillColor: Colors.transparent,
              filled: true,
              hintText: hintText,

          ),
        ),
      ),
    );
  }
}


