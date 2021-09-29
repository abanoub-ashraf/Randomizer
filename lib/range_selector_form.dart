import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:randomizer_app/randomizer_change_notifier.dart';
import 'range_selector_form_textfield.dart';

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
                            intValueSetter: (value) => context.read<RandomizerChangeNotifier>().min = value
                        ),
                        const SizedBox(height: 16,),
                        RangeSelectorTextFormField(
                            labelText: 'Maximum',
                            intValueSetter: (value) => context.read<RandomizerChangeNotifier>().max = value
                        )
                    ],
                ),
            ),
        );
    }
}
