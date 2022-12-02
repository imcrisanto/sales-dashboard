import 'package:flutter/material.dart';
import 'package:sales_dashboard/palette.dart';
import 'package:sales_dashboard/widgets/navigation_rail.dart';
import './screens/pincode.dart';
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
        fontFamily: 'Squad',
        primarySwatch: Palette.tapaking,
        scaffoldBackgroundColor: const Color(0xffF5E9D9),
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
        title: const Text(
          'Sales Dashboard for Avire Branch',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 100.0, horizontal: 50.0),
                    child: Column(
                      children: const [
                        Text(
                          'Take control of sales and data',
                          style: TextStyle(
                              color: Color(0xffD64123),
                              fontSize: 54,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'See your performance at a glance with useful insights',
                          style: TextStyle(
                              color: Color(0xff7D0C0E),
                              fontSize: 26,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 320,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                      ),
                      autofocus: true,
                      onPressed: () {
                        debugPrint('Logged-in');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DashboardScreen()));
                      },
                      child: const Text(
                        'Login Here',
                        style: TextStyle(
                            color: Color(0xffEDDECA),
                            fontSize: 26,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 350, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Developed by'),
                        Image.asset('/images/ibana-logo.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Image.asset(
                '/images/wallpaper-1.png',
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
