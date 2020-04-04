import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class PhoneInput extends StatelessWidget {
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
                padding: EdgeInsets.only(top: 17.0),
                onChanged: (value) => null,
                // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                initialSelection: 'BR',
                favorite: ['+55', '+351'],
                // optional. Shows only country name and flag
                showCountryOnly: false,
                // optional. Shows only country name and flag when popup is closed.
                showOnlyCountryWhenClosed: false,
                // optional. aligns the flag and the Text left
                alignLeft: false,
              ),
            ),
            Expanded(
              flex: 1,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Número',
                  hintText: 'Número do telefone',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
          ],
        )
      ],
    );
  }
}
