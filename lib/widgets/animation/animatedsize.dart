import 'package:flutter/material.dart';

class AnimatedSizeWidget extends StatefulWidget {
  const AnimatedSizeWidget({super.key});

  @override
  State<AnimatedSizeWidget> createState() => _AnimatedSizeWidgetState();
}

class _AnimatedSizeWidgetState extends State<AnimatedSizeWidget> {
  late double size;

  @override
  void initState() {
    size = 50;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: AnimatedSize(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
            child: Container(
              alignment: Alignment.center,
              width: size,
              height: size,
              color: Colors.amber,
              child: const Text('Bigger'),
            ),
          ),
        ),
      ),
      bottomSheet: SizedBox(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: size >= 200
                  ? null
                  : () {
                      setState(() {
                        size += 50;
                      });
                    },
              child: const Text('Increase'),
            ),
            OutlinedButton(
              onPressed: size <= 50
                  ? null
                  : () {
                      setState(() {
                        size -= 50;
                      });
                    },
              child: const Text('Decrease'),
            ),
          ],
        ),
      ),
    );
  }
}
