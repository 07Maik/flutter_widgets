import 'package:flutter/material.dart';

class NotificationListenerWidget extends StatefulWidget {
  const NotificationListenerWidget({super.key});

  @override
  State<NotificationListenerWidget> createState() =>
      _NotificationListenerWidgetState();
}

class _NotificationListenerWidgetState
    extends State<NotificationListenerWidget> {
  late String text;

  @override
  void initState() {
    text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            color: Colors.red,
            child: Text(text),
          ),
          Expanded(
            child: NotificationListener(
              onNotification: (notification) {
                if (notification is ScrollStartNotification) {
                  setState(() {
                    text = "Start";
                  });
                } else if (notification is ScrollUpdateNotification) {
                  setState(() {
                    text = "Update";
                  });
                } else if (notification is ScrollEndNotification) {
                  setState(() {
                    text = "End";
                  });
                }
                return true;
              },
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    subtitle: Text("Item $index"),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
