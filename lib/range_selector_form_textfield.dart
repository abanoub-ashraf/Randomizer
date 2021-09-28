import 'package:flutter/material.dart';

typedef IntValueSetter = void Function(int value);

class RangeSelectorTextFormField extends StatelessWidget {
    final String labelText;
    final IntValueSetter intValueSetter;

    const RangeSelectorTextFormField({
        Key? key,
        required this.labelText,
        required this.intValueSetter
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return TextFormField(
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: labelText
            ),
            keyboardType: const TextInputType.numberWithOptions(
                decimal: false, 
                signed: true
            ),
            validator: (value) {
                ///
                /// this validator returns null if the validation is fine, if not,
                /// it returns the error
                ///
                if (value == null || int.tryParse(value) == null) {
                    return 'Must me an integer';
                } else {
                    return null;
                }
            },
            onSaved: (newValue) => intValueSetter(int.parse(newValue ?? ''))
        );
    }
}
