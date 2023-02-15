import 'package:flutter/material.dart';

class PhysicShapeWidget extends StatelessWidget {
  const PhysicShapeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PhysicalShape(
          clipper: ShapeBorderClipper(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          elevation: 10,
          color: Colors.amber,
          child: const SizedBox(
            width: 200,
            height: 150,
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
