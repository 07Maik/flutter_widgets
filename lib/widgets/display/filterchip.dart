import 'package:flutter/material.dart';

class FilterChipWidget extends StatefulWidget {
  const FilterChipWidget({super.key});

  @override
  State<FilterChipWidget> createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
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
        child: FilterChip(
          label: const Text(
            'Sport',
            style: TextStyle(fontSize: 20),
          ),
          padding: const EdgeInsets.all(16),
          elevation: 2,
          avatar: const Icon(Icons.sports),
          backgroundColor: Colors.white,
          selectedColor: Colors.lightBlue,
          onSelected: (value) {
            setState(() {
              isSelected = !isSelected;
            });
          },
          selected: isSelected,
        ),
      ),
    );
  }
}
