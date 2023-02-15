import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blueGrey,
          padding: const EdgeInsets.all(4),
          child: ClipRRect(
            child: Banner(
              color: Colors.amber,
              location: BannerLocation.topEnd,
              message: '10% off',
              child: Container(
                color: Colors.white,
                height: 200,
                width: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    FlutterLogo(size: 80),
                    Text('Logo Flutter'),
                    Text(
                      '\$25',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
