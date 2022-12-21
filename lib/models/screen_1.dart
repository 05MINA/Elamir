import 'package:flutter/material.dart';

class Screen_One extends StatelessWidget {
  const Screen_One({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Castomer',style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold),)
      ),
    );
  }
}
