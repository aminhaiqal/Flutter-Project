import 'package:flutter/material.dart';

class RoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route Page'),
      ),
      body: const Center(
        child: Text('Welcome to the Route Page!'),
      ),
    );
  }
}