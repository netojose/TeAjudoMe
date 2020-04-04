import 'package:flutter/material.dart';

class HelpListInput extends StatelessWidget {
  HelpListInput({
    Key key,
  }) : super(key: key);

  Widget _item(String label, IconData icon) => Row(
        children: <Widget>[
          Checkbox(
            value: true,
            onChanged: (value) => null,
          ),
          GestureDetector(
            onTap: () => {},
            child: Row(
              children: <Widget>[
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
            'Preciso de ajuda com:',
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        _item('Compras', Icons.local_grocery_store),
        _item('Alimentação', Icons.local_dining),
        _item('Preciso conversar', Icons.phone_in_talk),
        _item('Farmácia', Icons.local_pharmacy),
        _item('Passear com o dog', Icons.pets),
      ],
    );
  }
}
