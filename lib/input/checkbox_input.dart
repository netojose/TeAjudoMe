import 'package:flutter/material.dart';

class CheckboxInput extends StatelessWidget {
  CheckboxInput({Key key, @required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          child: Text(label),
          onTap: () => {},
        ),
        Checkbox(
          value: true,
          onChanged: (value) => null,
        ),
      ],
    );
  }
}
