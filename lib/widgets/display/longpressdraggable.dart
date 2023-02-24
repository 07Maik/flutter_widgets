import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LongPressDraggableWidget extends StatefulWidget {
  const LongPressDraggableWidget({super.key});

  @override
  State<LongPressDraggableWidget> createState() =>
      _LongPressDraggableWidgetState();
}

class _LongPressDraggableWidgetState extends State<LongPressDraggableWidget> {
  late Offset offset;

  @override
  void initState() {
    offset = const Offset(150, 200);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Positioned(
                  left: offset.dx,
                  top: offset.dy,
                  child: LongPressDraggable(
                    delay: kPressTimeout,
                    feedback: Container(
                      color: Colors.red,
                      width: 200,
                      height: 100,
                    ),
                    child: Container(
                      color: Colors.blue,
                      width: 200,
                      height: 100,
                    ),
                    onDragEnd: (details) {
                      double adjustment = MediaQuery.of(context).size.height -
                          constraints.maxHeight;

                      setState(() {
                        offset = Offset(
                            details.offset.dx, details.offset.dy - adjustment);
                      });
                    },
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
