import 'package:flutter/material.dart';

class FadeInImageWidget extends StatelessWidget {
  const FadeInImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FadeInImage.assetNetwork(
                  height: 300,
                  placeholder: 'assets/images/placeholder.jpg',
                  image:
                      'https://res.cloudinary.com/dg6ag2cyo/image/upload/v1671459218/cld-sample-5.jpg'),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Best Shoes only for 25\$'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
