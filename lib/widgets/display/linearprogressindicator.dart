import 'package:flutter/material.dart';

class LinearProgressIndicatorWidget extends StatefulWidget {
  const LinearProgressIndicatorWidget({super.key});

  @override
  State<LinearProgressIndicatorWidget> createState() =>
      _LinearProgressIndicatorWidgetState();
}

class _LinearProgressIndicatorWidgetState
    extends State<LinearProgressIndicatorWidget> with TickerProviderStateMixin {
  late AnimationController animation;

  @override
  void initState() {
    animation = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )
      ..addListener(() => setState(() {}))
      ..repeat(reverse: true);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LinearProgressIndicator(
          value: animation.value,
          backgroundColor: Colors.grey,
          minHeight: 30,
          semanticsLabel: 'Cargando',
          color: Colors.red,
        ),
      ),
    );
  }
}
