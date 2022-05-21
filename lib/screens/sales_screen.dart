import 'package:flutter/material.dart';
import 'package:sales_dashboard/database_mimic.dart';

class SalesScreen extends StatelessWidget {
  final List<DataEntry> entry;
  const SalesScreen({Key? key, required this.entry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        const Text('This is the sales screen'),
        for (int i = 0; i < 10; i++) Text("$i"),
      ],
    ));
  }
}
