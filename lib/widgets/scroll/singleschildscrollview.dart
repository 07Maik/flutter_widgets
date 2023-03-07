import 'package:flutter/material.dart';

class SingleChildScrollViewWidget extends StatelessWidget {
  const SingleChildScrollViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(100, (index) {
            return ListTile(
              title: Text("Index $index"),
              trailing: const Icon(Icons.thumb_up),
            );
          }),
        ),
      ),
    );
  }
}
