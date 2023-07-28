import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Home()));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Flutter App'),
          centerTitle: true,
        ),
        body: Center(
          child: Image.asset('assets/car-grey.jpeg'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: const Text(
            '+',
            style: TextStyle(
              fontSize: 44,
            ),
          ),
        ));
  }
}
