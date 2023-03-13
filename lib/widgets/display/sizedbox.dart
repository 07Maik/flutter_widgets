import 'package:flutter/material.dart';

class SizedBoxWidget extends StatelessWidget {
  const SizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Text1'),
            SizedBox(
              width: double.infinity,
              height: 200,
              child:
                  Align(alignment: Alignment.center, child: Text('Sized Box')),
            ),
            Text('Text2'),
          ],
        ),
      ),
    );
  }
}
