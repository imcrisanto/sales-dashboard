import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            flex: 1,
            child: Text('Sorry no menu available yet'),
          ),
          Expanded(
            flex: 1,
            child: Image.asset('/images/wallpaper-2.png'),
          ),
        ],
      ),
    );
  }
}
