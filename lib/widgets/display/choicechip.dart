import 'package:flutter/material.dart';

class ChoiceChipWidget extends StatefulWidget {
  const ChoiceChipWidget({super.key});

  @override
  State<ChoiceChipWidget> createState() => _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
  late bool isSelected;

  @override
  void initState() {
    isSelected = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ChoiceChip(
          padding: const EdgeInsets.all(10),
          label: Text(
            isSelected ? 'selected' : 'no selected',
            style: TextStyle(color: isSelected ? Colors.white : Colors.black),
          ),
          selected: isSelected,
          selectedColor: Colors.blue,
          onSelected: (value) => setState(() => isSelected = !isSelected),
        ),
      ),
    );
  }
}
