import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
              flex: 3,
              child: Container(
                color: Colors.yellow,
                // height: 90,
              )),
          Flexible(
              flex: 2,
              child: Container(
                color: Colors.blue,
                // height: 60,
              )),
          Flexible(
              flex: 2,
              child: Container(
                // height: 60,
                color: Colors.red,
              ))
        ],
      ),
    );
  }
}
