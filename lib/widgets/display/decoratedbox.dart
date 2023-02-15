import 'package:flutter/material.dart';

class DecoratedBoxWidget extends StatelessWidget {
  const DecoratedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              )),
          child: SizedBox(
            width: 100,
            height: 100,
            child: Align(child: Text('Decorated Box')),
          ),
        ),
      ),
    );
  }
}
