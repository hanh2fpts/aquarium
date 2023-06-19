import 'package:flutter/material.dart';

class PlantScreen extends StatelessWidget {
  const PlantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aquatic plant'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Container(),
    );
  }
}
