import 'package:flutter/material.dart';

class GridPaperWidget extends StatelessWidget {
  const GridPaperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: GridPaper(
            divisions: 5,
            interval: 100,
            subdivisions: 2,
            color: Colors.blueGrey,
          )),
    );
  }
}
