import 'package:flutter/material.dart';

class AgreeInput extends StatelessWidget {
  AgreeInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: <Widget>[
          Checkbox(value: false, onChanged: null),
          Flexible(
            child: GestureDetector(
              onTap: () => null,
              child: Text(
                  'Eu confirmo a veracidade das informações prestadas, assumo toda a responsabilidade por tais informações e concordo em ter essas informações compartilhadas com outros usuários'),
            ),
          ),
        ],
      ),
    );
  }
}
