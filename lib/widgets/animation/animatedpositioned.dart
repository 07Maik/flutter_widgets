import 'package:flutter/material.dart';

class AnimatedPositionedWidget extends StatefulWidget {
  const AnimatedPositionedWidget({super.key});

  @override
  State<AnimatedPositionedWidget> createState() =>
      _AnimatedPositionedWidgetState();
}

class _AnimatedPositionedWidgetState extends State<AnimatedPositionedWidget> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            curve: Curves.fastOutSlowIn,
            top: 200,
            right: _isSelected ? 100 : 250,
            duration: const Duration(milliseconds: 500),
            height: _isSelected ? 200 : 100,
            width: _isSelected ? 100 : 200,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.cyan,
                ),
                alignment: Alignment.center,
                child: Text(_isSelected ? "Fit" : "Fat")),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isSelected = !_isSelected;
          });
        },
      ),
    );
  }
}
