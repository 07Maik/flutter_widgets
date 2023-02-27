import "package:flutter/material.dart";

class PreferredSizeWidget extends StatelessWidget {
  const PreferredSizeWidget({super.key});

  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: RadialGradient(colors: [
              Colors.blue.shade200,
              Colors.blue,
            ], radius: 3),
          ),
        ),
      ),
    );
  }
}
