import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({Key? key}) : super(key: key);

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
                  const Text('Sorry no menu available yet'),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.asset('/images/wallpaper-2.png'),
            ),
          ],
        ),
      ),
    );
  }
}
