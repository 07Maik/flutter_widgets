import 'package:flutter/material.dart';
import 'package:flutter_widgets/packages/dartz/example.dart';

class DartzExampleScreen extends StatelessWidget {
  const DartzExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: Example().getNamesStudents(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }

            if (snapshot.hasData) {
              List<String> names = snapshot.data as List<String>;
              return ListView.builder(
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      names.elementAt(index),
                    ),
                  );
                },
              );
            }

            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
