import 'package:flutter/material.dart';

class AnimatedPaddingWidget extends StatefulWidget {
  const AnimatedPaddingWidget({super.key});

  @override
  State<AnimatedPaddingWidget> createState() => _AnimatedPaddingWidgetState();
}

class _AnimatedPaddingWidgetState extends State<AnimatedPaddingWidget> {
  late double kpadding;
  @override
  void initState() {
    kpadding = 20;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              kpadding = kpadding == 10 ? 20 : 10;
            });
          },
          child: DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.circle,
            ),
            child: AnimatedPadding(
              duration: const Duration(milliseconds: 500),
              padding: EdgeInsets.all(kpadding),
              child: const FlutterLogo(size: 300),
            ),
          ),
        ),
      ),
    );
  }
}
