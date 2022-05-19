import 'package:flutter/material.dart';

class DashHomeScreen extends StatefulWidget {
  const DashHomeScreen({Key? key}) : super(key: key);

  @override
  State<DashHomeScreen> createState() => _DashHomeScreenState();
}

class _DashHomeScreenState extends State<DashHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Kumusta Al!'),
                  Text('Here is your summary analysis')
                ],
              ),
              const Text('insert date today')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('box'),
              Text('box'),
              Text('box'),
              Text('box')
            ],
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Today's Sales",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('box'),
                  const Text('box'),
                  const Text('box'),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('Add entry'))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
