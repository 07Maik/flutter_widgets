import 'package:flutter/material.dart';

class PhysicModelWidget extends StatelessWidget {
  const PhysicModelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: PhysicalModel(
          color: Colors.white,
          shape: BoxShape.circle,
          shadowColor: Colors.blue,
          elevation: 20,
          child: SizedBox(
            width: 200,
            height: 200,
            child: Center(
              child: FlutterLogo(size: 100),
            ),
          ),
        ),
      ),
    );
  }
}
