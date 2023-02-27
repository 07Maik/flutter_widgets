import 'package:flutter/material.dart';

class RangeSliderWidget extends StatefulWidget {
  const RangeSliderWidget({super.key});

  @override
  State<RangeSliderWidget> createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  late RangeValues rangeValues;

  @override
  void initState() {
    rangeValues = const RangeValues(0.1, 0.5);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final RangeLabels rangeLabels =
        RangeLabels(rangeValues.start.toString(), rangeValues.end.toString());

    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200,
          width: 300,
          child: RangeSlider(
            divisions: 10,
            values: rangeValues,
            labels: rangeLabels,
            onChanged: (value) {
              setState(() {
                rangeValues = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
