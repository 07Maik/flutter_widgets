import 'package:flutter/material.dart';

class RadioListTileWidget extends StatefulWidget {
  const RadioListTileWidget({super.key});

  @override
  State<RadioListTileWidget> createState() => _RadioListTileWidgetState();
}

class _RadioListTileWidgetState extends State<RadioListTileWidget> {
  late int valueRadioListTileSelected;

  @override
  void initState() {
    valueRadioListTileSelected = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioListTile(
              title: const Text('Option 1'),
              value: 1,
              groupValue: valueRadioListTileSelected,
              onChanged: (value) {
                setState(() {
                  valueRadioListTileSelected = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text('Option 2'),
              value: 2,
              groupValue: valueRadioListTileSelected,
              onChanged: (value) {
                setState(() {
                  valueRadioListTileSelected = value!;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
