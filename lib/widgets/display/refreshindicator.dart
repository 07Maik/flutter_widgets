import 'package:flutter/material.dart';

class RefreshIndicatorWidget extends StatefulWidget {
  const RefreshIndicatorWidget({super.key});

  @override
  State<RefreshIndicatorWidget> createState() => _RefreshIndicatorWidgetState();
}

class _RefreshIndicatorWidgetState extends State<RefreshIndicatorWidget> {
  late int count;

  @override
  void initState() {
    count = 10;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(
            const Duration(milliseconds: 500),
            () => count++,
          );
          setState(() {});
        },
        child: ListView.builder(
          itemCount: count,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 10),
              color: Color(0xfcbeee1 * (index + 1)),
              width: double.infinity,
              height: 100,
              child: Text(index.toString()),
            );
          },
        ),
      ),
    );
  }
}
