import 'package:flutter/material.dart';
import '../input/checkbox_input.dart';
import '../input/phone_input.dart';
import '../input/text_input.dart';
import '../input/agree_input.dart';
import '../input/submit_input.dart';

class RegisterForm extends StatefulWidget {
  final String title;
  final String header;
  final Widget extra;

  const RegisterForm({Key key, @required this.title, this.header, this.extra})
      : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, dynamic> formData = {
    'name': null,
    'phone': '',
    'whatsapp': null,
    'email': null,
    'city': null,
    'state': null,
    'more': null,
    'agree': null,
  };

  void _handleSumnit() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      print(formData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 50.0),
              child: Column(children: <Widget>[
                if (widget.header != null)
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                    child: Text(
                      widget.header,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                TextInput(
                  label: 'Nome',
                  // hint: 'Nome',
                  onSaved: (v) => formData['name'] = v,
                ),
                PhoneInput(
                  onSaved: (v) => formData['phone'] = v,
                ),
                CheckboxInput(
                  label: 'Pode chamar no WhatsApp?',
                ),
                TextInput(
                  label: 'Email',
                  hint: 'Endereço de email',
                  inputType: TextInputType.emailAddress,
                  onSaved: (v) => formData['email'] = v,
                ),
                TextInput(
                  label: 'Cidade',
                  hint: 'Sua cidade',
                  onSaved: (v) => formData['city'] = v,
                ),
                TextInput(
                  label: 'Estado',
                  hint: 'Seu estado',
                  onSaved: (v) => formData['state'] = v,
                ),
                if (widget.extra != null) widget.extra,
                AgreeInput(
                  validator: (v) {
                    if (!v) {
                      return 'Você precisa aceitar os termos';
                    }
                    return null;
                  },
                  onSaved: (v) => formData['agree'] = v,
                ),
                SubmitInput(handleSubmit: _handleSumnit),
              ]),
            )),
      ),
    );
  }
}
