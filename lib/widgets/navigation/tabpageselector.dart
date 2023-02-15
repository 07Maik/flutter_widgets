import 'package:flutter/material.dart';

class TapPageSelectorWidget extends StatefulWidget {
  const TapPageSelectorWidget({super.key});

  @override
  State<TapPageSelectorWidget> createState() => _TapPageSelectorWidgetState();
}

class _TapPageSelectorWidgetState extends State<TapPageSelectorWidget>
    with SingleTickerProviderStateMixin {
  final pages = const [
    Icon(Icons.home),
    Icon(Icons.list),
    Icon(Icons.settings),
  ];

  late TabController controller;
  int _index = 0;

  @override
  void initState() {
    controller = TabController(
      vsync: this,
      initialIndex: _index,
      length: pages.length,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          TabBarView(
            controller: controller,
            children: pages,
          ),
          Positioned(
            bottom: 40,
            child: TabPageSelector(
              controller: controller,
              color: Colors.black38,
            ),
          )
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton.small(
            onPressed: () {
              (_index != pages.length - 1 ? _index++ : _index = 0);
              controller.animateTo(_index);
            },
            backgroundColor: Colors.lightBlue,
            child: const Icon(
              Icons.arrow_right,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
