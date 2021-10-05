import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'main.dart';

///
/// ConsumerWidget comes from riverpod package
///
class RandomizerPage extends ConsumerWidget {    
    const RandomizerPage({
        Key? key
    }) : super(key: key);

    ///
    /// ScopedReader comes from riverpod package
    ///
    @override
    Widget build(BuildContext context, ScopedReader watch) {
        final randomizer = watch(randomizerProvider);

        return Scaffold(
            appBar: AppBar(
                title: const Text('Randomizer'),
            ),
            body: Center(
                ///
                /// this Consumer is how to listen to the provider in riverpod
                ///
                child: Text(
                    randomizer.generatedNumber?.toString() ?? 'Generate A Number',
                    style: const TextStyle(fontSize: 42),
                ),
            ),
            floatingActionButton: FloatingActionButton.extended(
                label: const Text('Generate'),
                onPressed: () {
                    context.read(randomizerProvider.notifier).generateRandomNumber();
                },
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
        );
    }
}
