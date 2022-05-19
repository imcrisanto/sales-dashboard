import 'package:flutter/material.dart';

class DashHomeScreen extends StatefulWidget {
  const DashHomeScreen({Key? key}) : super(key: key);

  @override
  State<DashHomeScreen> createState() => _DashHomeScreenState();
}

class _DashHomeScreenState extends State<DashHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text('Kumusta' + 'Al'),
                  Text('Here is your summary analysis'),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('24 | May | 2022'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Orders'),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Sales to Date'),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Monthly Costs'),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Breakeven'),
                ),
              ),
              Spacer(
                flex: 1,
              ),
            ],
          ),
          Text('Today Sales'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Amount'),
              Text('Category'),
              Text('Payment'),
            ],
          )
        ],
      ),
    );
  }
}
