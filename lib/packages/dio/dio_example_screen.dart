import 'package:flutter/material.dart';
import 'package:flutter_widgets/packages/dio/repository.dart';

class DioExampleScreen extends StatefulWidget {
  const DioExampleScreen({super.key});

  @override
  State<DioExampleScreen> createState() => _DioExampleScreenState();
}

class _DioExampleScreenState extends State<DioExampleScreen> {
  late String? user;

  @override
  void initState() {
    user = null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(user ?? "No user loaded"),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () async {
              user = await Repository().getUser();
              setState(() {});
            },
            child: const Icon(
              Icons.search,
            ),
          ),
          FloatingActionButton(
            onPressed: () async {
              user = await Repository().postUser();
              setState(() {});
            },
            child: const Icon(
              Icons.send,
            ),
          ),
        ],
      ),
    );
  }
}
