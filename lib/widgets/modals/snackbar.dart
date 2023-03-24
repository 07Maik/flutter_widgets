import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: const Text("Message heree"),
              action: SnackBarAction(
                label: "Accept",
                onPressed: () {},
              ),
            ));
          },
          child: const Text("Hola"),
        ),
      ),
    );
  }
}
