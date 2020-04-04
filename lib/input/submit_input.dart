import 'package:flutter/material.dart';

class SubmitInput extends StatelessWidget {
  SubmitInput({Key key, @required this.handleSubmit}) : super(key: key);

  final Function handleSubmit;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blue,
      textColor: Colors.white,
      onPressed: handleSubmit,
      child: Text('Salvar'),
    );
  }
}
