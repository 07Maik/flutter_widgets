import 'package:flutter/material.dart';

class PlaceHolderWidget extends StatelessWidget {
  const PlaceHolderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: const [
          Placeholder(
            color: Colors.amber,
            fallbackHeight: 200,
          ),
        ],
      ),
    );
  }
}
