import 'package:flutter/material.dart';

class SubmitInput extends StatelessWidget {
  SubmitInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blue,
      textColor: Colors.white,
      onPressed: () {},
      child: Text('Salvar'),
    );
  }
}
