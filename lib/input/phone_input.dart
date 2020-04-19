import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class PhoneInput extends StatefulWidget {
  const PhoneInput({Key key, this.onSaved, this.isRequired, this.validator})
      : super(key: key);

  final Function onSaved;
  final Function validator;
  final bool isRequired;

  @override
  State<StatefulWidget> createState() {
    return _PhoneInputState();
  }
}

class _PhoneInputState extends State<PhoneInput> {
  String ddi = '+351';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Text('Telefone'),
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 0,
              child: CountryCodePicker(
                padding: EdgeInsets.only(right: 10.0),
                onChanged: (val) => {
                  setState(() {
                    ddi = val.toString();
                  })
                },
                initialSelection: 'BR',
                favorite: ['+55', '+351'],
                showCountryOnly: false,
                showOnlyCountryWhenClosed: false,
                alignLeft: false,
              ),
            ),
            Expanded(
              flex: 1,
              child: TextFormField(
                keyboardType: TextInputType.number,
                onSaved: (v) => widget.onSaved(ddi + ' ' + v),
                validator: widget.validator,
              ),
            ),
          ],
        )
      ],
    );
  }
}
