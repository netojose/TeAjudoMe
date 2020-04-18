import 'package:flutter/material.dart';

import '../forms/register_form.dart';
import '../input/help_list_input.dart';

class NeedHelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RegisterForm(
      title: 'Preciso de ajuda',
      header: 'Seus dados',
      extra: HelpListInput(
        label: 'Preciso de ajuda com',
      ),
    );
  }
}
