import 'package:flutter/material.dart';

class AnimationAlignWidget extends StatefulWidget {
  const AnimationAlignWidget({super.key});

  @override
  State<AnimationAlignWidget> createState() => _AnimationAlignWidgetState();
}

class _AnimationAlignWidgetState extends State<AnimationAlignWidget> {
  bool isAlign = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            isAlign = !isAlign;
          });
        },
        child: AnimatedAlign(
          curve: Curves.easeIn,
          alignment: isAlign ? Alignment.center : Alignment.bottomRight,
          duration: const Duration(seconds: 1),
          child: Container(
            alignment: Alignment.center,
            width: 200,
            height: 100,
            color: Colors.red,
            child: const Text('Here I go'),
          ),
        ),
      ),
    );
  }
}
