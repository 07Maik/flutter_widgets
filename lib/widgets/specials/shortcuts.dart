import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShortcutsWidget extends StatefulWidget {
  const ShortcutsWidget({super.key});

  @override
  State<ShortcutsWidget> createState() => _ShortcutsWidgetState();
}

class _ShortcutsWidgetState extends State<ShortcutsWidget> {
  late int counter;

  @override
  void initState() {
    counter = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Shortcuts(
        shortcuts: <ShortcutActivator, Intent>{
          LogicalKeySet(LogicalKeyboardKey.arrowUp): const IncrementIntent(),
          LogicalKeySet(LogicalKeyboardKey.arrowDown): const DecrementIntent(),
        },
        child: Actions(
          actions: {
            IncrementIntent: CallbackAction(
              onInvoke: (intent) {
                setState(() => counter = counter + 1);
                return null;
              },
            ),
            DecrementIntent: CallbackAction(
              onInvoke: (intent) {
                setState(() => counter = counter - 1);
                return null;
              },
            )
          },
          child: Focus(
            autofocus: true,
            child: Center(
              child: Text("Counter: $counter"),
            ),
          ),
        ),
      ),
    );
  }
}

class IncrementIntent extends Intent {
  const IncrementIntent();
}

class DecrementIntent extends Intent {
  const DecrementIntent();
}
