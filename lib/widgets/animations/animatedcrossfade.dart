import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  State<AnimatedCrossFadeWidget> createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  late bool isVisibleFirst;

  @override
  void initState() {
    isVisibleFirst = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        setState(() {
          isVisibleFirst = !isVisibleFirst;
        });
      },
      child: AnimatedCrossFade(
        firstChild: const Icon(
          Icons.home,
          size: 200,
        ),
        secondChild: const Icon(
          Icons.settings,
          size: 200,
        ),
        crossFadeState: isVisibleFirst
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: const Duration(seconds: 1),
      ),
    ));
  }
}
