import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(50),
              child: Text(
                'Sorry no menu available yet',
                style: TextStyle(
                    color: Color(0xffD64123),
                    fontSize: 54,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Image.network(
              'https://global-uploads.webflow.com/5ec313bf98efb1435b19d4a6/5ec313bf98efb1310c19d546_Tapa-King-Meals-Group.jpg',
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
