import 'package:flutter/material.dart';

class CamerPage extends StatefulWidget {
  const CamerPage({super.key});

  @override
  State<CamerPage> createState() => _CamerPageState();
}

class _CamerPageState extends State<CamerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('CamerPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CamerPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
