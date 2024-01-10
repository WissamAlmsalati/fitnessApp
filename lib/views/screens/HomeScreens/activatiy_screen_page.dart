import 'package:flutter/material.dart';

class ActivatiyScreenPage extends StatelessWidget {
  const ActivatiyScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('ActivatiyScreenPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ActivatiyScreenPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
