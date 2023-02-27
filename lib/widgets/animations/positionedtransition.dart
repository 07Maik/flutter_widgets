import 'package:flutter/material.dart';

class PositionedTransitionWidget extends StatefulWidget {
  const PositionedTransitionWidget({super.key});

  @override
  State<PositionedTransitionWidget> createState() =>
      _PositionedTransitionWidgetState();
}

class _PositionedTransitionWidgetState extends State<PositionedTransitionWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..repeat(reverse: true);

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PositionedTransition(
            rect: RelativeRectTween(
              begin: const RelativeRect.fromLTRB(350, 350, 0, 0),
              end: const RelativeRect.fromLTRB(350, 0, 0, 350),
            ).animate(
              CurvedAnimation(
                parent: animationController,
                curve: Curves.linearToEaseOut,
              ),
            ),
            child: const CircleAvatar(
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
