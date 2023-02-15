import 'package:flutter/material.dart';

class CloseButtonWidget extends StatelessWidget {
  const CloseButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
              // color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Text(
                  'Click in the button',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                const Spacer(),
                CloseButton(
                  color: Colors.blue,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                          title: Text('Closed'),
                        );
                      },
                    );
                  },
                ),
              ],
            )),
      ),
    );
  }
}
