import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  TextInput(
      {Key key,
      @required this.label,
      this.hint,
      this.inputType = TextInputType.text})
      : super(key: key);

  final String label;
  final String hint;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      decoration: InputDecoration(labelText: label, hintText: hint),
      validator: (value) {
        if (value.isEmpty) {
          return 'Este campo precisa ser preenchido';
        }
        return null;
      },
    );
  }
}
