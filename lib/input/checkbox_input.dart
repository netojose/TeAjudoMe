import 'package:flutter/material.dart';

class CheckboxInput extends FormField<bool> {
  CheckboxInput(
      {FormFieldSetter<bool> onSaved,
      FormFieldValidator<bool> validator,
      @required String label,
      bool initialValue = false,
      bool autovalidate = false})
      : super(
            onSaved: onSaved,
            validator: validator,
            initialValue: initialValue,
            autovalidate: autovalidate,
            builder: (FormFieldState<bool> state) {
              return Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      GestureDetector(
                        child: Text(label),
                        onTap: () => state.didChange(!state.value),
                      ),
                      Checkbox(
                        value: state.value,
                        onChanged: (v) => state.didChange(v),
                      ),
                    ],
                  ),
                  state.hasError
                      ? Text(state.errorText,
                          style: TextStyle(color: Colors.red))
                      : Container()
                ],
              );
            });
}
