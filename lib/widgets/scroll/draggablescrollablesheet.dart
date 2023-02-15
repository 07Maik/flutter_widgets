import 'package:flutter/material.dart';

class DraggableScrollableSheetWidget extends StatelessWidget {
  const DraggableScrollableSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DraggableScrollableSheet(
        snap: true,
        builder: (context, scrollController) {
          return Container(
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
            child: ListView.builder(
              itemCount: 50,
              controller: scrollController,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    'User $index',
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
