import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('World Time'),
        //   centerTitle: true,
        //   elevation: 0,
        // ),
        body: SafeArea(
            child: Column(children: [
          OutlinedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: const Icon(Icons.edit_location),
              label: const Text('Edit Location'))
        ])));
  }
}
