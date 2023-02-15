import 'package:flutter/material.dart';

class DropDownButtonWidget extends StatefulWidget {
  const DropDownButtonWidget({super.key});

  @override
  State<DropDownButtonWidget> createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  late String value;

  @override
  void initState() {
    value = "1";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black54,
          ),
          child: DropdownButton<String>(
            isExpanded: true,
            style: const TextStyle(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
            dropdownColor: Colors.black,
            iconEnabledColor: Colors.white,
            underline: Container(
              height: 1,
              color: Colors.white,
            ),
            value: value,
            items: const [
              DropdownMenuItem<String>(
                value: "1",
                child: Text('Option 1'),
              ),
              DropdownMenuItem<String>(
                value: "2",
                child: Text('Option 2'),
              ),
              DropdownMenuItem<String>(
                value: "3",
                child: Text('Option 3'),
              ),
            ],
            onChanged: (val) {
              setState(() {
                value = val!;
              });
            },
          ),
        ),
      ),
    );
  }
}
