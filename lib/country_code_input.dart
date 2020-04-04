import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class CountryCodeInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CountryCodePicker(
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
    );
  }
}
