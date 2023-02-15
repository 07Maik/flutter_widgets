import 'package:flutter/material.dart';

class PopupMenuButtonWidget extends StatefulWidget {
  const PopupMenuButtonWidget({super.key});

  @override
  State<PopupMenuButtonWidget> createState() => _PopupMenuButtonWidgetState();
}

class _PopupMenuButtonWidgetState extends State<PopupMenuButtonWidget> {
  late bool isDarkMode;

  @override
  void initState() {
    isDarkMode = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? const Color(0xff424242) : Colors.white70,
      body: Container(
        alignment: Alignment.topRight,
        child: PopupMenuButton(
          icon: Icon(
            Icons.more_vert,
            color: isDarkMode ? Colors.white : const Color(0xff424242),
          ),
          itemBuilder: (context) => const [
            PopupMenuItem(
              value: true,
              child: Text('Dark Mode'),
            ),
            PopupMenuItem(
              value: false,
              child: Text('Light Mode'),
            ),
          ],
          onSelected: (value) {
            setState(() {
              isDarkMode = value;
            });
          },
        ),
      ),
    );
  }
}
