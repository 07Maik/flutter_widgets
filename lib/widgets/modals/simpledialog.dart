import 'package:flutter/material.dart';

class SimpleDialogWidget extends StatelessWidget {
  const SimpleDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) {
                  return SimpleDialog(
                    title: const Text("Simple Dialog"),
                    contentPadding: const EdgeInsets.all(24),
                    children: [
                      const FlutterLogo(
                        size: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(12),
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Close"),
                          )
                        ],
                      )
                    ],
                  );
                },
              );
            },
            child: const Text(
              "Click me!!",
            )),
      ),
    );
  }
}
