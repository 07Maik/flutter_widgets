import 'package:flutter/material.dart';

class SelectableTextWidget extends StatelessWidget {
  const SelectableTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SelectableText(
          'Select this text',
          onSelectionChanged: (selection, cause) {
            debugPrint(selection.toString());
          },
        ),
      ),
    );
  }
}
