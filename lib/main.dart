import 'package:flutter/material.dart';
import './screens/pin_screen.dart';

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
        primarySwatch: Colors.red,
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
<<<<<<< Updated upstream
            Column(
              children: [
                const Text('data'),
                const Text('data'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PinScreen()));
                  },
                  child: const Text('Login'),
                ),
                const Text('data'),
                const Text('logo'),
              ],
=======
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
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                  const Text('Developed by'),
                  const Text('logo'),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.asset('assets/images/wallpaper-1.png'),
>>>>>>> Stashed changes
            ),
          ],
        ),
      ),
    );
  }
}
