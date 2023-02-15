import 'package:flutter/material.dart';

class OrientationBuildWidget extends StatelessWidget {
  const OrientationBuildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          if (orientation == Orientation.portrait) {
            return const Center(
              child: Text('Portrait'),
            );
          } else {
            return const Center(
              child: Text('Landscape'),
            );
          }
        },
      ),
    );
  }
}
