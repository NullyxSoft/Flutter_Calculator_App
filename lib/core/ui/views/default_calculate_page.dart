import 'package:flutter/material.dart';

class DefaultCalculatePage extends StatefulWidget {
  const DefaultCalculatePage({super.key});

  @override
  State<DefaultCalculatePage> createState() => _DefaultCalculatePageState();
}

class _DefaultCalculatePageState extends State<DefaultCalculatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
            flex: 4,
            child: Container(
              color: Colors.green,
            )),
        Expanded(
            flex: 6,
            child: Container(
              color: Colors.red,
            ))
      ]),
    );
  }
}
