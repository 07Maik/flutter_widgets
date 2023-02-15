import 'package:flutter/material.dart';

class AspectRadioWidget extends StatelessWidget {
  const AspectRadioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Expanded(
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.black,
              child: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
