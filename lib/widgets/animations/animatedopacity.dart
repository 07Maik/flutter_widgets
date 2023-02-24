import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  const AnimatedOpacityWidget({super.key});

  @override
  State<AnimatedOpacityWidget> createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  late double opacity;

  @override
  void initState() {
    opacity = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              opacity = opacity <= 0.2 ? 1.0 : opacity - 0.1;
            });
          },
          child: AnimatedOpacity(
            opacity: opacity,
            duration: const Duration(milliseconds: 500),
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: const Icon(Icons.flutter_dash_outlined),
            ),
          ),
        ),
      ),
    );
  }
}
