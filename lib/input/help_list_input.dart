import 'package:flutter/material.dart';

import './checkbox_group_input.dart';

class HelpListInput extends StatelessWidget {
  final String label;
  final bool showPsychologist;

  HelpListInput({Key key, @required this.label, this.showPsychologist})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxGroupInput(
      label: label,
      moreText: 'Outros',
      items: [
        if (showPsychologist != null)
          {
            'label': 'Sou psicólogo',
            'icon': Icons.favorite,
          },
        {
          'label': 'Compras',
          'icon': Icons.local_grocery_store,
        },
        {
          'label': 'Alimentação',
          'icon': Icons.local_dining,
        },
        {
          'label': 'Preciso conversar',
          'icon': Icons.phone_in_talk,
        },
        {
          'label': 'Farmácia',
          'icon': Icons.local_pharmacy,
        },
        {
          'label': 'Passear com o dog',
          'icon': Icons.pets,
        },
      ],
    );
  }
}
