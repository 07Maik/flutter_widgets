import 'package:flutter/material.dart';

class AnimatedIconWidget extends StatefulWidget {
  const AnimatedIconWidget({super.key});

  @override
  State<AnimatedIconWidget> createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late bool isPlay;

  @override
  void initState() {
    controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    isPlay = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (!isPlay) {
              setState(() {
                controller.forward();
              });
            } else {
              setState(() {
                controller.reverse();
              });
            }
            isPlay = !isPlay;
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: controller,
          ),
        ),
      ),
    );
  }
}
