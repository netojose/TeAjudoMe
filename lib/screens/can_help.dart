import 'package:flutter/material.dart';

import '../forms/register_form.dart';
import '../input/help_list_input.dart';

class CanHelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RegisterForm(
      title: 'Posso ajudar',
      header: 'Seus dados',
      extra: HelpListInput(
        label: 'Posso ajudar com',
        showPsychologist: true,
      ),
    );
  }
}
