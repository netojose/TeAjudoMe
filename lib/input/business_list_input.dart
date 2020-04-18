import 'package:flutter/material.dart';
import './checkbox_group_input.dart';

class BusinessListInput extends StatelessWidget {
  BusinessListInput({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxGroupInput(
      label: 'Meu negócio é',
      moreText: 'Outros',
      items: [
        {
          'label': 'Mercado',
          'icon': Icons.local_grocery_store,
        },
        {
          'label': 'Restaurante/padaria',
          'icon': Icons.restaurant,
        },
        {
          'label': 'Feira livre/horta',
          'icon': Icons.store_mall_directory,
        },
        {
          'label': 'Farmácia',
          'icon': Icons.local_pharmacy,
        },
        {
          'label': 'Mecânica',
          'icon': Icons.settings,
        },
      ],
    );
  }
}
