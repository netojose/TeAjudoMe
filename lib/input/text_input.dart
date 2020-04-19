import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  TextInput({
    Key key,
    this.hint,
    this.inputType = TextInputType.text,
    this.isRequired = true,
    this.label,
    this.validator,
    @required this.onSaved,
  }) : super(key: key);

  final String label;
  final String hint;
  final Function onSaved;
  final Function validator;
  final TextInputType inputType;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      decoration: InputDecoration(labelText: label, hintText: hint),
      onSaved: onSaved,
      validator: validator,
    );
  }
}
