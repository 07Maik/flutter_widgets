import 'package:flutter/material.dart';

class ScrollbarWidget extends StatelessWidget {
  const ScrollbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        thickness: 10,
        interactive: true,
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 2000,
            color: Colors.red,
            child: Text("Hello world\n" * 1000),
          ),
        ),
      ),
    );
  }
}
