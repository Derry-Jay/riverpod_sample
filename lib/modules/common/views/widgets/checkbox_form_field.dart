import 'package:flutter/material.dart';
import '../../../../extensions/extensions.dart';

class CheckboxFormField extends FormField<bool> {
  CheckboxFormField(
      {super.key,
      Widget? title,
      super.onSaved,
      super.validator,
      super.initialValue = false,
      AutovalidateMode? autovalidate,
      ListTileControlAffinity? controlAffinity})
      : super(
            autovalidateMode: autovalidate,
            builder: (FormFieldState<bool> state) {
              return CheckboxListTile(
                  title: title,
                  value: state.value,
                  dense: state.hasError,
                  onChanged: state.didChange,
                  controlAffinity: controlAffinity ?? ListTileControlAffinity.platform,
                  subtitle: state.hasError
                      ? Text(state.errorText ?? 'Error',
                          style: TextStyle(
                              color: state.context.theme.colorScheme.error))
                      : null);
            });
}
