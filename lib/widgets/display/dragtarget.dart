import 'package:flutter/material.dart';

class DragTargetWidget extends StatefulWidget {
  const DragTargetWidget({super.key});

  @override
  State<DragTargetWidget> createState() => _DragTargetWidgetState();
}

class _DragTargetWidgetState extends State<DragTargetWidget> {
  late Color draggedItemColor;
  late int coins;

  @override
  void initState() {
    draggedItemColor = Colors.amber;
    coins = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Draggable(
              data: Colors.amber,
              onDraggableCanceled: (velocity, offset) {},
              feedback: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(0.5),
                      shape: BoxShape.circle),
                  child: const Center(
                      child: Text(
                    '1 coin',
                    style: TextStyle(
                        fontSize: 10,
                        decoration: TextDecoration.none,
                        color: Colors.black45),
                  ))),
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle,
                ),
                child: const Center(child: Text('1 coin')),
              ),
            ),
            DragTarget(
              onAccept: (Color data) {
                draggedItemColor = data;
                setState(() {
                  coins++;
                });
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: candidateData.isEmpty
                          ? draggedItemColor
                          : Colors.grey.shade400,
                      shape: BoxShape.circle),
                  child: Center(child: Text("Coins: $coins")),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
