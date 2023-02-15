import 'package:flutter/material.dart';

class OpacityWidget extends StatelessWidget {
  const OpacityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          container(),
          Opacity(
            opacity: 0.5,
            child: container(),
          ),
          Opacity(
            opacity: 0.1,
            child: container(),
          )
        ],
      ),
    );
  }

  Container container() {
    return Container(width: double.infinity, height: 100, color: Colors.red);
  }
}
