import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleWidget extends StatefulWidget {
  const AnimatedDefaultTextStyleWidget({super.key});

  @override
  State<AnimatedDefaultTextStyleWidget> createState() =>
      _AnimatedDefaultTextStyleWidgetState();
}

class _AnimatedDefaultTextStyleWidgetState
    extends State<AnimatedDefaultTextStyleWidget> {
  late Color color;
  late double fontSize;

  @override
  void initState() {
    color = Colors.black;
    fontSize = 14;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MouseRegion(
          onHover: (event) {
            setState(() {
              color = Colors.red;
              fontSize = 20;
            });
          },
          onExit: (event) {
            setState(() {
              color = Colors.black;
              fontSize = 14;
            });
          },
          child: AnimatedDefaultTextStyle(
            style: TextStyle(color: color, fontSize: fontSize),
            duration: const Duration(milliseconds: 500),
            child: const Text('Hover Here'),
          ),
        ),
      ),
    );
  }
}
