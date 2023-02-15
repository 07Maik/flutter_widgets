import 'package:flutter/material.dart';

class DateRangePickerWidget extends StatefulWidget {
  const DateRangePickerWidget({super.key});

  @override
  State<DateRangePickerWidget> createState() => _DateRangePickerWidgetState();
}

class _DateRangePickerWidgetState extends State<DateRangePickerWidget> {
  late DateTimeRange selectedDates;

  @override
  void initState() {
    selectedDates = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now(),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(selectedDates.duration.inDays.toString()),
            ElevatedButton(
              onPressed: () async {
                DateTimeRange? dateTimeRange = await showDateRangePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2050),
                );

                if (dateTimeRange != null) {
                  setState(() {
                    selectedDates = dateTimeRange;
                  });
                }
              },
              child: const Text('Choose dates'),
            )
          ],
        ),
      ),
    );
  }
}
