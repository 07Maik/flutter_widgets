import 'package:flutter/material.dart';

class ModalBarrierWidget extends StatefulWidget {
  const ModalBarrierWidget({super.key});

  @override
  State<ModalBarrierWidget> createState() => _ModalBarrierWidgetState();
}

class _ModalBarrierWidgetState extends State<ModalBarrierWidget> {
  late bool isActive;
  @override
  void initState() {
    isActive = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: ElevatedButton.icon(
              onPressed: (() {
                setState(() {
                  isActive = !isActive;
                });
              }),
              icon: Icon(isActive ? Icons.cancel : Icons.check),
              label: const Text('Press'),
            ),
          ),
          if (isActive)
            ModalBarrier(
              color: Colors.black.withOpacity(0.5),
              dismissible: true,
              onDismiss: () {
                setState(() {
                  isActive = !isActive;
                });
              },
            )
        ],
      ),
    );
  }
}
