import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
          text: const TextSpan(
            style: TextStyle(
                color: Colors.black, fontFamily: "Algerian", fontSize: 32),
            children: [
              TextSpan(text: "Hello "),
              TextSpan(
                text: "World ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(text: "!!!"),
            ],
          ),
        ),
      ),
    );
  }
}
