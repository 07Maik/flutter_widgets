import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoContextMenuWidget extends StatelessWidget {
  const CupertinoContextMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: CupertinoContextMenu(
              actions: [
                CupertinoContextMenuAction(
                  child: const Text('Option 1'),
                  onPressed: () => Navigator.pop(context),
                ),
                CupertinoContextMenuAction(
                  child: const Text('Option 2'),
                  onPressed: () => Navigator.pop(context),
                )
              ],
              child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png')),
        ),
      ),
    );
  }
}
