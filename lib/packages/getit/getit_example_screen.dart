import 'package:flutter/material.dart';

import 'example.dart';
import 'service_locator.dart';

class GetItExampleScreen extends StatefulWidget {
  const GetItExampleScreen({super.key});

  @override
  State<GetItExampleScreen> createState() => _GetItExampleScreenState();
}

class _GetItExampleScreenState extends State<GetItExampleScreen> {
  late Map<String, String>? user;
  late bool isLoading;

  @override
  void initState() {
    user = null;
    isLoading = false;

    init();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () async {
              setState(() => isLoading = true);
              user = await Example().getUser("1");
              setState(() => isLoading = false);
            },
            child: const Text('Get'),
          ),
          const SizedBox(width: 100),
          FloatingActionButton(
            onPressed: () async {
              Map<String, String> data = {
                "id": "2",
                "name": "Brayan",
                "age": "28"
              };

              setState(() => isLoading = true);
              user = await Example().saveUser(data);
              setState(() => isLoading = false);
            },
            child: const Text("Post"),
          )
        ],
      ),
    );
  }

  Widget body() {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (user == null) {
      return const Center(child: Text("No data"));
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: double.infinity),
        Text(user!["id"]!),
        const SizedBox(height: 10),
        Text(user!["name"]!),
        const SizedBox(height: 10),
        Text(user!["age"]!),
      ],
    );
  }
}
