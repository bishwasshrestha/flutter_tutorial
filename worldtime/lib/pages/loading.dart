import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   title: const Text('Log in'),
      //   centerTitle: true,
      //   elevation: 0,
      // ),
      body: Text('log in'),
    );
  }
}
