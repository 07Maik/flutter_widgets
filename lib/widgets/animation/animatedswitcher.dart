import 'package:flutter/material.dart';

class AnimatedSwitcherWidget extends StatefulWidget {
  const AnimatedSwitcherWidget({super.key});

  @override
  State<AnimatedSwitcherWidget> createState() => _AnimatedSwitcherWidgetState();
}

class _AnimatedSwitcherWidgetState extends State<AnimatedSwitcherWidget> {
  late int number;

  @override
  void initState() {
    number = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (child, animation) => SizeTransition(
            sizeFactor: animation,
            child: child,
          ),
          switchInCurve: Curves.decelerate,
          child: Container(
            color: Colors.red,
            height: 200,
            width: 200,
            key: ValueKey(number),
            child: Center(child: Text('Card $number')),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number++;
          });
        },
        child: const Icon(Icons.next_plan),
      ),
    );
  }
}
