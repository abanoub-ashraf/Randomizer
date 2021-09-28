import 'package:flutter/material.dart';

import 'range_selector_form_textfield.dart';

typedef IntValueSetter = void Function(int value);

class RangeSelectorForm extends StatelessWidget {
    final IntValueSetter minValueSetter;
    final IntValueSetter maxValueSetter;

    final GlobalKey<FormState> formKey;

    const RangeSelectorForm({
        Key? key,
        required this.formKey,
        required this.minValueSetter,
        required this.maxValueSetter
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Form(
            key: formKey,
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        RangeSelectorTextFormField(
                            labelText: 'Minimum',
                            intValueSetter: minValueSetter
                        ),
                        const SizedBox(height: 16,),
                        RangeSelectorTextFormField(
                            labelText: 'Maximum',
                            intValueSetter: maxValueSetter
                        )
                    ],
                ),
            ),
        );
    }
}
