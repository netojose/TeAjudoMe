import 'package:flutter/material.dart';
import '../input/checkbox_input.dart';
import '../input/phone_input.dart';
import '../input/text_input.dart';
import '../input/agree_input.dart';
import '../input/submit_input.dart';
import '../input/help_list_input.dart';

class CanHelpForm extends StatefulWidget {
  final String type;

  const CanHelpForm({Key key, this.type}) : super(key: key);

  @override
  _CanHelpFormState createState() => _CanHelpFormState();
}

class _CanHelpFormState extends State<CanHelpForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posso ajudar'),
      ),
      body: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 50.0),
              child: Column(children: <Widget>[
                TextInput(label: 'Nome', hint: 'Digite seu nome'),
                PhoneInput(),
                CheckboxInput(
                  label: 'Pode chamar no WhatsApp?',
                ),
                TextInput(
                  label: 'Email',
                  hint: 'Endereço de email',
                  inputType: TextInputType.emailAddress,
                ),
                TextInput(label: 'Cidade', hint: 'Sua cidade'),
                TextInput(label: 'Estado', hint: 'Seu estado'),
                HelpListInput(),
                TextInput(
                    label: 'Outras solicitações',
                    hint: 'O que mais você precisa?'),
                AgreeInput(),
                SubmitInput(),
              ]),
            )),
      ),
    );
  }
}
