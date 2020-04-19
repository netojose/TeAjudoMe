import 'package:flutter/material.dart';

import './text_input.dart';

class CheckboxGroupInput extends StatefulWidget {
  final String label;
  final String moreText;
  final Widget prepend;
  final List<dynamic> items;

  const CheckboxGroupInput(
      {Key key,
      @required this.label,
      @required this.moreText,
      this.prepend,
      this.items})
      : super(key: key);

  @override
  _CheckboxGroupInputState createState() => _CheckboxGroupInputState();
}

class _CheckboxGroupInputState extends State<CheckboxGroupInput> {
  bool showCustomOption = false;

  void _toggleCustomOption(bool value) {
    print(value);
    setState(() {
      showCustomOption = value;
    });
  }

  Widget _item(String label, IconData icon, Function onChange, bool value) =>
      Row(
        children: <Widget>[
          Checkbox(
            value: value,
            onChanged: (v) => onChange(v),
          ),
          GestureDetector(
            onTap: () => onChange(!value),
            child: Row(
              children: <Widget>[
                if (icon != null)
                  Icon(
                    icon,
                    color: Colors.blue,
                  ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text(label),
                ),
              ],
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Text(
            widget.label,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        if (widget.prepend != null) widget.prepend,
        ...widget.items
            .map((item) =>
                _item(item['label'], item['icon'], (bool value) => null, false))
            .toList(),
        _item(widget.moreText, null, _toggleCustomOption, showCustomOption),
        if (showCustomOption) TextInput(onSaved: (String value) => null)
      ],
    );
  }
}
