import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  final List<String> users = List.generate(20, (index) => "user $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: ValueKey<String>(users[index]),
            onDismissed: (direction) {
              setState(() {
                users.removeAt(index);
              });
            },
            background: Container(
              color: Colors.red,
              child: const Icon(Icons.delete),
            ),
            child: ListTile(
              title: Text(users[index]),
            ),
          );
        },
      ),
    );
  }
}
