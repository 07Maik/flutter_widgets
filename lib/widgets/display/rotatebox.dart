import 'package:flutter/material.dart';

class RotateBoxWidget extends StatefulWidget {
  const RotateBoxWidget({super.key});

  @override
  State<RotateBoxWidget> createState() => _RotateBoxWidgetState();
}

class _RotateBoxWidgetState extends State<RotateBoxWidget> {
  late int quarterTurns;
  @override
  void initState() {
    quarterTurns = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotatedBox(
          quarterTurns: quarterTurns,
          child: const FlutterLogo(size: 200),
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () => setState(() => quarterTurns++)),
    );
  }
}
