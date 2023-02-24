import 'package:flutter/material.dart';

class AnimatedListWidget extends StatefulWidget {
  const AnimatedListWidget({super.key});

  @override
  State<AnimatedListWidget> createState() => _AnimatedListWidgetState();
}

class _AnimatedListWidgetState extends State<AnimatedListWidget> {
  late GlobalKey<AnimatedListState> _key;

  @override
  void initState() {
    _key = GlobalKey();
    super.initState();
  }

  void delete(int index) {
    _key.currentState?.removeItem(
        index,
        (context, animation) => SizeTransition(
              sizeFactor: animation,
              child: Container(
                color: Colors.red.withOpacity(0.1),
                height: 50,
                width: double.infinity,
              ),
            ),
        duration: const Duration(milliseconds: 200));
  }

  void add() => _key.currentState?.insertItem(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text('Users'),
          Expanded(
            child: AnimatedList(
              initialItemCount: 0,
              key: _key,
              itemBuilder: (context, index, animation) {
                return SizeTransition(
                  key: UniqueKey(),
                  sizeFactor: animation,
                  child: ListTile(
                    leading: const CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('User #$index'),
                    trailing: IconButton(
                        onPressed: () => delete(index),
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => add(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
