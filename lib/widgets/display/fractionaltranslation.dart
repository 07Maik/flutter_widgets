import 'package:flutter/material.dart';

class FractionalTranslationWidget extends StatelessWidget {
  const FractionalTranslationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //first row
          square(false),
          square(true),
          //second row
          FractionalTranslation(
            translation: const Offset(-2, 1),
            child: square(true),
          ),
          FractionalTranslation(
            translation: const Offset(-2, 1),
            child: square(false),
          ),
        ],
      ),
    );
  }

  Container square([bool isBlack = true]) {
    return Container(
      padding: EdgeInsets.zero,
      color: isBlack ? Colors.black : Colors.grey.shade300,
      width: 75,
      height: 75,
    );
  }
}
