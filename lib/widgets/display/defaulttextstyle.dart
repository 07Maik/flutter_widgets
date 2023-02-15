import 'package:flutter/material.dart';

class DefaultTextStyleWidget extends StatelessWidget {
  const DefaultTextStyleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DefaultTextStyle(
          style: const TextStyle(
            color: Colors.red,
            fontSize: 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Hello, world'),
              Text('How are you'),
            ],
          ),
        ),
      ),
    );
  }
}
