import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: CupertinoTextField(
                    placeholder: 'Search',
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              10.heightBox,
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Recent Searches',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const Text(
                      'Clear',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              10.heightBox,
              Column(
                children: List.generate(
                  9,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 130,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
