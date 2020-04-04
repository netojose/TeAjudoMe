import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  TextInput({
    Key key,
    this.hint,
    this.inputType = TextInputType.text,
    this.isRequired = true,
    @required this.label,
    @required this.onSaved,
  }) : super(key: key);

  final String label;
  final String hint;
  final Function onSaved;
  final TextInputType inputType;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      decoration: InputDecoration(labelText: label, hintText: hint),
      onSaved: onSaved,
      validator: (value) {
        if (isRequired && value.isEmpty) {
          return 'Este campo precisa ser preenchido';
        }
        return null;
      },
    );
  }
}
