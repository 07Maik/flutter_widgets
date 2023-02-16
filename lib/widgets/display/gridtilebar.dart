import 'package:flutter/material.dart';

class GridTileBarWidget extends StatelessWidget {
  const GridTileBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 250,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 0.1),
          ),
          child: GridTile(
              header: GridTileBar(
                backgroundColor: Colors.blue[100],
                subtitle: const Text(
                  'Flutter Logo',
                  style: TextStyle(color: Colors.black),
                ),
                trailing: const Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
              ),
              footer: GridTileBar(
                backgroundColor: Colors.blue[100],
                leading: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                title: const Text(
                  '1400 likes',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              child: const FlutterLogo()),
        ),
      ),
    );
  }
}
