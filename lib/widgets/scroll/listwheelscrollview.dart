import 'package:flutter/material.dart';

class ListWheelScrollViewWidget extends StatelessWidget {
  const ListWheelScrollViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListWheelScrollView(
        itemExtent: 200,
        // diameterRatio: 2,
        // magnification: 5,
        squeeze: 2,
        children: List.generate(
          20,
          (index) => ListTile(
            leading: Text(index.toString()),
            subtitle: Text("Option ${index.toString()}"),
          ),
        ),
      ),
    );
  }
}
