import 'package:flutter/material.dart';

import 'example.dart';
import 'model/user.dart';

class FreezedExampleScreen extends StatefulWidget {
  const FreezedExampleScreen({super.key});

  @override
  State<FreezedExampleScreen> createState() => _FreezedExampleScreenState();
}

class _FreezedExampleScreenState extends State<FreezedExampleScreen> {
  late Example example;

  @override
  void initState() {
    example = Example();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    User user = example.getUser();

    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 100,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          color: Colors.lightBlue,
          child: Text(
            user.when(
              common: (id, nickname, level) {
                return "I am $nickname a common user, have a ${level.name} level";
              },
              admin: (level) {
                return "I am a admin user, have a ${level.name} level";
              },
              support: (level) {
                return "I am a support user, have a ${level.name} level";
              },
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: const Icon(Icons.auto_awesome),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
