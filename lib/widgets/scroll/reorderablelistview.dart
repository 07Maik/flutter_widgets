import 'package:flutter/material.dart';

class ReorderableListViewWidget extends StatefulWidget {
  const ReorderableListViewWidget({super.key});

  @override
  State<ReorderableListViewWidget> createState() =>
      _ReorderableListViewWidgetState();
}

class _ReorderableListViewWidgetState extends State<ReorderableListViewWidget> {
  List<int> list = List.generate(20, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReorderableListView(
          onReorder: (oldIndex, newIndex) {
            setState(() {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
              int item = list.removeAt(oldIndex);
              list.insert(newIndex, item);
            });
          },
          children: List.generate(list.length, (index) {
            return ListTile(
              key: Key("$index"),
              tileColor: list[index].isEven ? Colors.blue : Colors.red,
              title: Text(list[index].toString()),
            );
          })),
    );
  }
}
