import 'package:flutter/material.dart';

class RawAutoCompleteWidget extends StatefulWidget {
  const RawAutoCompleteWidget({super.key});

  @override
  State<RawAutoCompleteWidget> createState() => _RawAutoCompleteWidgetState();
}

class _RawAutoCompleteWidgetState extends State<RawAutoCompleteWidget> {
  late List<String> list;

  @override
  void initState() {
    list = [
      "Colombia",
      "United States",
      "Mexico",
      "Colombia",
      "United States",
      "Mexico",
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RawAutocomplete(
        optionsViewBuilder: (context, onSelected, options) {
          return Align(
            alignment: Alignment.topCenter,
            child: Material(
              elevation: 2,
              color: Colors.blueGrey,
              child: SizedBox(
                height: 150,
                child: ListView.builder(
                  itemCount: options.length,
                  itemBuilder: (context, index) {
                    final option = options.elementAt(index);

                    return ListTile(
                      onTap: () {
                        onSelected(option);
                      },
                      title: Text(option),
                    );
                  },
                ),
              ),
            ),
          );
        },
        optionsBuilder: (textEditingValue) {
          return list.where(
            (element) => element
                .toLowerCase()
                .contains(textEditingValue.text.toLowerCase()),
          );
        },
        fieldViewBuilder: (
          context,
          textEditingController,
          focusNode,
          onFieldSubmitted,
        ) =>
            TextField(
          controller: textEditingController,
          focusNode: focusNode,
          onSubmitted: (value) {
            onFieldSubmitted();
          },
        ),
      ),
    );
  }
}
