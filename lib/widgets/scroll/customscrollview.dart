import 'package:flutter/material.dart';

class CustomScrollViewWidget extends StatelessWidget {
  const CustomScrollViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xffeecb11 + index * 100),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Item #$index"),
                  );
                },
                childCount: 50,
              ),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                crossAxisSpacing: 50,
                mainAxisExtent: 50,
                mainAxisSpacing: 10,
                childAspectRatio: 4,
              ))
        ],
      ),
    );
  }
}
