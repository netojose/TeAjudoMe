import 'package:flutter/material.dart';
import './checkbox_group_input.dart';

class WorkingHoursInput extends StatelessWidget {
  WorkingHoursInput({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxGroupInput(
      label: 'Horário de Funcionamento',
      moreText: 'Outros horários?',
      items: [
        {'label': 'Todos os dias'},
        {'label': 'Segunda a sexta'},
        {'label': 'Fim de semana'},
        {'label': '24 horas'},
        {'label': '9h às 18h'},
      ],
    );
  }
}
