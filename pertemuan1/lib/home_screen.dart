import 'package:flutter/material.dart';
class HomeSreen extends StatelessWidget {
  const HomeSreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Home Screen'),
        actions: const[
          Icon(Icons.search),
          SizedBox(width: 50),
        ],
      ),

    );
  }
}
