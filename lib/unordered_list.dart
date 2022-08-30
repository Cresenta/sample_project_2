import 'package:flutter/material.dart';

class UnorderedList extends StatelessWidget {
  const UnorderedList(this.texts);
  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    var smallFont = const TextStyle(fontSize: 10);

    for (var text in texts) {
      widgetList.add(
        Row(
          children: [
            Text(
              " • ",
              style: smallFont
            ),
            Text(
              text,
              style: smallFont
            ),
          ],
        ),
      );
      widgetList.add(
        const SizedBox(height: 8,)
      );
    }

    return Column(
      children: widgetList,
    );
  }
}
