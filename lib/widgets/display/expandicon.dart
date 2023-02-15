import 'package:flutter/material.dart';

class ExpandIconWidget extends StatefulWidget {
  const ExpandIconWidget({super.key});

  @override
  State<ExpandIconWidget> createState() => _ExpandIconWidgetState();
}

class _ExpandIconWidgetState extends State<ExpandIconWidget> {
  late bool isExpanded;

  @override
  void initState() {
    isExpanded = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Click to expand"),
              ExpandIcon(
                onPressed: ((value) =>
                    setState(() => isExpanded = !isExpanded)),
                color: Colors.blueGrey,
                isExpanded: isExpanded,
              ),
            ],
          ),
          if (isExpanded)
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 100,
              color: Colors.blueGrey.withOpacity(0.5),
              child: const Text("I'm here!!"),
            )
        ],
      ),
    ));
  }
}
