import 'package:flutter/material.dart';

class ListenerWidget extends StatefulWidget {
  const ListenerWidget({super.key});

  @override
  State<ListenerWidget> createState() => _ListenerWidgetState();
}

class _ListenerWidgetState extends State<ListenerWidget> {
  late double positionX;
  late double positionY;

  @override
  void initState() {
    positionX = 0;
    positionY = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Listener(
        onPointerMove: (event) {
          setState(() {
            positionX = event.position.dx;
            positionY = event.position.dy;
          });
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue,
          child: Center(
            child: Text(
              'positionX: $positionX positionY: $positionY',
            ),
          ),
        ),
      ),
    );
  }
}
