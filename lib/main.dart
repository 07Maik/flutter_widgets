import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_widgets/widgets/widgets.dart' as widgets;
// import 'package:flutter_widgets/packages/packages.dart' as packages;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MyScrollBehavior(),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const widgets.SingleChildScrollViewWidget(),
    );
  }
}

class MyScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices =>
      {PointerDeviceKind.touch, PointerDeviceKind.mouse};

  const MyScrollBehavior();
}
