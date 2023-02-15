import 'package:flutter/material.dart';

class Item {
  final String title;
  final String description;
  bool isExpanded;

  Item({
    required this.title,
    required this.description,
    this.isExpanded = false,
  });
}

class ExpansionPanelListWidget extends StatefulWidget {
  const ExpansionPanelListWidget({super.key});

  @override
  State<ExpansionPanelListWidget> createState() =>
      _ExpansionPanelListWidgetState();
}

class _ExpansionPanelListWidgetState extends State<ExpansionPanelListWidget> {
  late List<Item> items;

  @override
  void initState() {
    items = List.generate(
      5,
      (index) => Item(
          title: 'Title 1',
          description:
              "Voluptate aliqua dolor sunt est. Laborum exercitation reprehenderit Lorem ex. Consequat non eiusmod id elit qui ut ex."),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (panelIndex, isExpanded) {
            setState(() {
              items[panelIndex].isExpanded = !isExpanded;
            });
          },
          children: items
              .map(
                (Item item) => ExpansionPanel(
                  canTapOnHeader: true,
                  backgroundColor: Colors.white70,
                  isExpanded: item.isExpanded,
                  headerBuilder: (context, isExpanded) => Padding(
                    padding: const EdgeInsets.only(left: 12, top: 12),
                    child: Text(item.title),
                  ),
                  body: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.white,
                    child: Text(item.description),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
