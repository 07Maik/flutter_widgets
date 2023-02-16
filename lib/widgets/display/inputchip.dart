import 'package:flutter/material.dart';

class InputChipWidget extends StatelessWidget {
  const InputChipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InputChip(
          backgroundColor: Colors.white,
          elevation: 5,
          label: const Text('Throw away the trash'),
          deleteIconColor: Colors.red,
          onDeleted: () {},
        ),
      ),
    );
  }
}
