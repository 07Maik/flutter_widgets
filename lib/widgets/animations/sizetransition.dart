import 'package:flutter/material.dart';

class SizeTransitionWidget extends StatefulWidget {
  const SizeTransitionWidget({super.key});

  @override
  State<SizeTransitionWidget> createState() => _SizeTransitionWidgetState();
}

class _SizeTransitionWidgetState extends State<SizeTransitionWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this,
        duration: const Duration(
          milliseconds: 2000,
        ))
      ..repeat(reverse: true);

    animation = CurvedAnimation(parent: controller, curve: Curves.easeOut);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          SizeTransition(
            axis: Axis.horizontal,
            axisAlignment: 2,
            sizeFactor: animation,
            child: const Center(
              child: Icon(
                Icons.flutter_dash,
                color: Colors.red,
                size: 128,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
