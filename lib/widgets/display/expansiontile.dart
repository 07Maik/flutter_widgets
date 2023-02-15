import 'package:flutter/material.dart';

class ExpansionTitleWidget extends StatelessWidget {
  const ExpansionTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ExpansionTile(
          textColor: Colors.black,
          collapsedTextColor: Colors.black,
          collapsedBackgroundColor: Colors.blue.shade100,
          title: const Text('Title 1'),
          backgroundColor: Colors.blue.shade300,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Additionals'),
            ),
          ],
        ),
      ),
    );
  }
}
