import 'package:flutter/material.dart';
import '../widgets/navigation_rail.dart';
import 'package:pinput/pinput.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({Key? key}) : super(key: key);

  @override
  State<PinScreen> createState() => _PinScreenState();
}

final formKey = GlobalKey<FormState>();

class _PinScreenState extends State<PinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Pinput(
            length: 4,
            autofocus: true,
            closeKeyboardWhenCompleted: true,
            validator: (s) {
              return s == '2022' ? null : 'Incorrect Pincode';
            },
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Column(
              children: [
                const Text("Please enter your 4 digit pin code"),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DashboardScreen()));
                  },
                  child: const Text('Sign In'),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
