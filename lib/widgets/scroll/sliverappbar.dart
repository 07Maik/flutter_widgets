import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            // pinned: true,
            floating: true,
            centerTitle: true,
            title: Text("Text"),
            actions: [
              Icon(Icons.percent),
            ],
            backgroundColor: Colors.blue,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              background: FlutterLogo(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ListTile(
                title: Text("Item #$index"),
              );
            }, childCount: 100),
          )
        ],
      ),
    );
  }
}
