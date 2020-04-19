import 'package:flutter/material.dart';

class AgreeInput extends FormField<bool> {
  AgreeInput(
      {FormFieldSetter<bool> onSaved,
      FormFieldValidator<bool> validator,
      bool initialValue = false,
      bool autovalidate = false})
      : super(
            onSaved: onSaved,
            validator: validator,
            initialValue: initialValue,
            autovalidate: autovalidate,
            builder: (FormFieldState<bool> state) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: state.value,
                          onChanged: (v) => state.didChange(v),
                        ),
                        Flexible(
                          child: GestureDetector(
                            onTap: () => state.didChange(!state.value),
                            child: Text(
                                'Eu confirmo a veracidade das informações prestadas, assumo toda a responsabilidade por tais informações e concordo em ter essas informações compartilhadas com outros usuários'),
                          ),
                        ),
                      ],
                    ),
                    state.hasError
                        ? Text(state.errorText,
                            style: TextStyle(color: Colors.red))
                        : Container()
                  ],
                ),
              );
            });
}
