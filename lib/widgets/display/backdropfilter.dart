import 'dart:ui';

import 'package:flutter/material.dart';

class BackDropFilterWidget extends StatelessWidget {
  const BackDropFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            const FlutterLogo(
              size: 200,
            ),
            Positioned.fill(
                child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.white.withOpacity(0.1),
              ),
            )),
            const FlutterLogo(
              size: 200,
            ),
          ],
        ),
      ),
    );
  }
}
