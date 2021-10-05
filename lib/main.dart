import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'range_selector_page.dart';
import 'package:randomizer_app/randomizer_state_notifier.dart';

void main() { 
    runApp(const AppWidget());
}

///
/// this is the provider of the app we gonna use
///
final randomizerProvider = StateNotifierProvider<RandomizerStateNotifier, RandomizerState>(
    (ref) => RandomizerStateNotifier()
);

class AppWidget extends StatelessWidget {
    const AppWidget({Key? key}) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
        ///
        /// All Flutter applications using Riverpod must contain a ProviderScope at the root 
        /// of their widget tree
        ///
        return ProviderScope(
            child: MaterialApp(
                title: 'Randomizer',
                theme: ThemeData(
                    colorScheme: ColorScheme
                        .fromSwatch(primarySwatch: Colors.orange)
                        .copyWith(secondary: Colors.orangeAccent)
                ),
                home: RangeSelectorPage(),
            ),
        );
    }
}
