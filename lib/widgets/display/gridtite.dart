import 'package:flutter/material.dart';

class GridTiteWidget extends StatelessWidget {
  const GridTiteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 300,
          width: 250,
          child: GridTile(
            header: Container(
              height: 40,
              color: Colors.lightBlueAccent,
            ),
            footer: Container(
              height: 40,
              color: Colors.lightBlue,
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 40.0),
              child: FlutterLogo(),
            ),
          ),
        ),
      ),
    );
  }
}
