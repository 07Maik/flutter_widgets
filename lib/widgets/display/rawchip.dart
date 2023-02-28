import 'package:flutter/material.dart';

class RawChipWidget extends StatelessWidget {
  const RawChipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RawChip(
          backgroundColor: Colors.lightBlueAccent,
          padding: const EdgeInsets.all(8),
          labelPadding: const EdgeInsets.all(12),
          label: const Text('Course Flutter'),
          deleteIcon: const Icon(Icons.delete),
          avatar: const Icon(Icons.person),
          onDeleted: () {
            debugPrint("deleted");
          },
          onSelected: (value) {
            debugPrint("on selected");
          },
        ),
      ),
    );
  }
}
