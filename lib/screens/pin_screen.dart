import 'package:flutter/material.dart';
import './dashboard_screen.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({Key? key}) : super(key: key);

  @override
  State<PinScreen> createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Text('thing 1'),
            Text('thing 2'),
            Text('thing 3'),
            Text('thing 4')
          ]),
          const Text("Please enter your 4 digit pin code"),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DashboardScreen()));
              },
              child: const Text('Sign In'))
        ],
      )),
    );
  }
}
