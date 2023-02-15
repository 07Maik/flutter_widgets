import 'package:flutter/material.dart';

class OverFlowWidget extends StatelessWidget {
  const OverFlowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: OverflowBar(
            children: [
              _container(),
              _container(),
              _container(),
            ],
          )),
    );
  }

  _container() {
    return Container(
      margin: const EdgeInsets.all(20),
      width: 100,
      height: 40,
      color: Colors.red,
      child: const Text('Button'),
    );
  }
}
