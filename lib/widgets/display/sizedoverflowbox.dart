import 'package:flutter/material.dart';

class SizedOverflowBoxWidget extends StatelessWidget {
  const SizedOverflowBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            color: Colors.black,
            child: SizedOverflowBox(
                size: const Size(50, 25),
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.all(30)),
                    onPressed: () {},
                    child: const Text('data')))),
      ),
    );
  }
}
