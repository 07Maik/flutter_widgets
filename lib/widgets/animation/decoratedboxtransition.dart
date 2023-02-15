import 'package:flutter/material.dart';

class DecoratedBoxTransitionWidget extends StatefulWidget {
  const DecoratedBoxTransitionWidget({super.key});

  @override
  State<DecoratedBoxTransitionWidget> createState() =>
      _DecoratedBoxTransitionWidgetState();
}

class _DecoratedBoxTransitionWidgetState
    extends State<DecoratedBoxTransitionWidget> with TickerProviderStateMixin {
  late DecorationTween decorationTween;
  late AnimationController controller;

  @override
  void initState() {
    decorationTween = DecorationTween(
        begin: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20),
        ),
        end: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
        ));

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DecoratedBoxTransition(
          decoration: decorationTween.animate(controller),
          child: const SizedBox(
            height: 200,
            width: 200,
            child: Center(
              child: Text('Decorated Box Transition'),
            ),
          ),
        ),
      ),
    );
  }
}
