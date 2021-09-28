import 'package:flutter/material.dart';

import 'range_selector_page.dart';

void main() => runApp(const AppWidget());

class AppWidget extends StatelessWidget {
    const AppWidget({Key? key}) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Randomizer',
            theme: ThemeData(
                colorScheme: ColorScheme
                    .fromSwatch(primarySwatch: Colors.orange)
                    .copyWith(secondary: Colors.orangeAccent)
            ),
            home: RangeSelectorPage(),
            
        );
    }
}
