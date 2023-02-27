import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  const RadioWidget({super.key});

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  late int valueRadioSelected;

  @override
  void initState() {
    valueRadioSelected = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
              value: 1,
              groupValue: valueRadioSelected,
              onChanged: (value) {
                setState(() {
                  valueRadioSelected = value!;
                });
              },
            ),
            Radio(
              value: 2,
              groupValue: valueRadioSelected,
              onChanged: (value) {
                setState(() {
                  valueRadioSelected = value!;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
