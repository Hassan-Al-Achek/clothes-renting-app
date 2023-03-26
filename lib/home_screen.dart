import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text("Welcome To Clothes Renting!"),
      ),
    );
  }
}

// void main(List<String> args) {
//   // runApp();
// }
