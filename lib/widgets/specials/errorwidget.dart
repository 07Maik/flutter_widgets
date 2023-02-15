import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

// ignore: camel_case_types
class ErrorWidget_ extends StatefulWidget {
  const ErrorWidget_({super.key});

  @override
  State<ErrorWidget_> createState() => _ErrorWidgetState();
}

class _ErrorWidgetState extends State<ErrorWidget_> {
  @override
  void initState() {
    ErrorWidget.builder = (details) {
      if (!kDebugMode) {
        //common error
        return ErrorWidget(details.exception);
      }

      //custom error
      return Container(
        color: Colors.blueGrey,
        child: Center(
          child: Text(
            details.exception.toString(),
            style: const TextStyle(
                color: Colors.amber,
                fontSize: 20,
                decoration: TextDecoration.none),
          ),
        ),
      );
    };

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListView(
        // ignore: null_check_always_fails
        children: null!,
      ),
    ));
  }
}
