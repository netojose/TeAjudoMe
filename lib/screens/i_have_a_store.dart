import 'package:flutter/material.dart';

import '../forms/register_form.dart';
import '../input/business_list_input.dart';
import '../input/working_hours_input.dart';
import '../input/checkbox_input.dart';

class IHaveAStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RegisterForm(
      title: 'Tenho um pequeno negócio',
      header: 'Dados do seu negócio',
      extra: Column(
        children: <Widget>[
          BusinessListInput(),
          WorkingHoursInput(),
          CheckboxInput(label: 'Fazemos entregas')
        ],
      ),
    );
  }
}
