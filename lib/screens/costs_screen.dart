import 'package:flutter/material.dart';
import 'package:sales_dashboard/database_mimic.dart';

class CostScreen extends StatelessWidget {
  final List<DataEntry> entry;
  const CostScreen({Key? key, required this.entry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text('This is the cost screen'),
        for (int i = 0; i < entry.length; i++)
          Text(
              "Time: ${entry[i].timeEnt}; Amount: ${entry[i].amountEnt};Category: ${entry[i].categoryEnt};Payment: ${entry[i].paymentEnt};User: ${entry[i].userEnt}")
      ],
    ));
  }
}
