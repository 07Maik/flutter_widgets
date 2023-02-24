import 'package:flutter/material.dart';

class AnimatedModalBarrierWidget extends StatefulWidget {
  const AnimatedModalBarrierWidget({super.key});

  @override
  State<AnimatedModalBarrierWidget> createState() =>
      _AnimatedModalBarrierWidgetState();
}

class _AnimatedModalBarrierWidgetState extends State<AnimatedModalBarrierWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Color?> animation;
  late bool isPressed;
  late Widget modalBarrier;

  @override
  void initState() {
    isPressed = false;
    ColorTween colorTween = ColorTween(
      begin: Colors.amber.shade200,
      end: Colors.white.withOpacity(0.5),
    );

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    );

    animation = colorTween.animate(controller);

    modalBarrier = AnimatedModalBarrier(
      dismissible: true,
      color: animation,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 100,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ElevatedButton(
                    onPressed: (() {
                      setState(() {
                        isPressed = true;
                      });
                      controller.reset();
                      controller.forward();
                      Future.delayed(
                        const Duration(milliseconds: 3000),
                        () {
                          setState(() {
                            isPressed = false;
                          });
                        },
                      );
                    }),
                    child: const Text('Click me!'),
                  ),
                  if (isPressed) modalBarrier
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
