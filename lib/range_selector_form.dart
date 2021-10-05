import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'range_selector_form_textfield.dart';
import 'package:randomizer_app/main.dart';

typedef IntValueSetter = void Function(int value);

class RangeSelectorForm extends StatelessWidget {

    final GlobalKey<FormState> formKey;

    const RangeSelectorForm({
        Key? key,
        required this.formKey
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
                            intValueSetter: (value) => context.read(randomizerProvider.notifier).setMin(value)
                        ),
                        const SizedBox(height: 16,),
                        RangeSelectorTextFormField(
                            labelText: 'Maximum',
                            intValueSetter: (value) => context.read(randomizerProvider.notifier).setMax(value)
                        )
                    ],
                ),
            ),
        );
    }
}
