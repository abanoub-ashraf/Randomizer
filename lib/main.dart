import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'range_selector_page.dart';
import 'package:randomizer_app/randomizer_change_notifier.dart';

void main() => runApp(const AppWidget());

class AppWidget extends StatelessWidget {
    const AppWidget({Key? key}) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
        return ChangeNotifierProvider(
            create: (context) => RandomizerChangeNotifier(),
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
