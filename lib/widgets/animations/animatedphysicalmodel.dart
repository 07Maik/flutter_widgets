import 'package:flutter/material.dart';

class AnimatedPhysicalModelWidget extends StatefulWidget {
  const AnimatedPhysicalModelWidget({super.key});

  @override
  State<AnimatedPhysicalModelWidget> createState() =>
      _AnimatedPhysicalModelWidgetState();
}

class _AnimatedPhysicalModelWidgetState
    extends State<AnimatedPhysicalModelWidget> {
  late double elevation;
  late Color color;

  @override
  void initState() {
    elevation = 5;
    color = Colors.white24;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedPhysicalModel(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          elevation: elevation,
          color: color,
          shadowColor: Colors.black,
          duration: const Duration(milliseconds: 500),
          child: GestureDetector(
            onTap: () {
              setState(() {
                elevation = elevation == 5 ? 10 : 5;
                color = elevation == 5 ? Colors.white24 : Colors.white30;
              });
            },
            child: Container(
              color: Colors.transparent,
              alignment: Alignment.center,
              width: 120,
              height: 80,
              child: const Text('Click me!'),
            ),
          ),
        ),
      ),
    );
  }
}
