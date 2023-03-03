import 'package:flutter/material.dart';

class ShaderMaskWidget extends StatelessWidget {
  const ShaderMaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ShaderMask(
          shaderCallback: (bounds) {
            return const LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.yellow,
                Colors.blue,
              ],
            ).createShader(bounds);
          },
          child: const FlutterLogo(
            size: 120,
          ),
        ),
      ),
    );
  }
}
