import 'package:flutter/material.dart';
import 'package:sales_dashboard/palette.dart';
import './screens/pin_screen.dart';
import './palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sales Dashboard for Avire Branch',
      theme: ThemeData(
        primarySwatch: Palette.tapaking,
        backgroundColor: const Color(0xffF5E9D9),
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Text('Tapaking'),
        title: const Text('Sales Dashboard for Avire Branch'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Take control of sales and data'),
                  const Text(
                      'See your performance at a glance with useful insights'),
                  ElevatedButton(
                    autofocus: true,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PinScreen()));
                    },
                    child: const Text('Login'),
                  ),
                  const Text('Developed by'),
                  const Text('logo'),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.asset('/images/wallpaper-1.png'),
            ),
          ],
        ),
      ),
    );
  }
}
