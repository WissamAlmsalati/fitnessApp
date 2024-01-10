import 'package:flutter/material.dart';

class SearchScreenPage extends StatefulWidget {
  const SearchScreenPage({super.key});

  @override
  State<SearchScreenPage> createState() => _SearchScreenPageState();
}

class _SearchScreenPageState extends State<SearchScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('SearchScreenPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SearchScreenPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
