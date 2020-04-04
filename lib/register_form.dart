import 'package:flutter/material.dart';
import './checkbox_input.dart';
import './phone_input.dart';

class RegisterForm extends StatefulWidget {
  final String title;

  const RegisterForm({Key key, this.title}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  Widget _buildInput(String label, String hint) => TextFormField(
        decoration: InputDecoration(labelText: label, hintText: hint),
        validator: (value) {
          if (value.isEmpty) {
            return 'Este campo precisa ser preenchido';
          }
          return null;
        },
      );

  Widget _buildSubmitButton() => RaisedButton(
        onPressed: () {
          if (_formKey.currentState.validate()) {
            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text('Processing Data')));
          }
        },
        child: Text('Salvar'),
      );

  Widget _checkbox(String label) => CheckboxInput(
        label: label,
      );

  Widget _helpItem(String label, IconData icon) => Row(
        children: <Widget>[
          Checkbox(
            value: true,
            onChanged: (value) => null,
          ),
          GestureDetector(
            onTap: () => {},
            child: Row(
              children: <Widget>[Icon(icon), Text(label)],
            ),
          ),
        ],
      );

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
                _buildInput('Nome', 'Digite seu nome'),
                PhoneInput(),
                _checkbox('Pode chamar no WhatsApp?'),
                _buildInput('Email', 'Endereço de email'),
                _buildInput('Cidade', 'Sua cidade'),
                _buildInput('Estado', 'Seu estado'),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Preciso de ajuda com:',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    _helpItem('Compras', Icons.local_grocery_store),
                    _helpItem('Alimentação', Icons.local_dining),
                    _helpItem('Preciso conversar', Icons.phone_in_talk),
                    _helpItem('Farmácia', Icons.local_pharmacy),
                    _helpItem('Passear com o dog', Icons.pets),
                  ],
                ),
                _buildInput('Outras solicitações', 'O que mais você precisa?'),
                _buildSubmitButton(),
              ]),
            )),
      ),
    );
  }
}
