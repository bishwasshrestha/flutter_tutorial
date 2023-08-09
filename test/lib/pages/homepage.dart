import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage(
      {super.key, required this.title});

  final String title;
 
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int _counter = 0;

 static TextStyle optionStyle = GoogleFonts.eduSaBeginner(
      textStyle: const TextStyle(
    fontSize: 38,
  ));

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //a widget definition for individual navigation bar
    //widgit for home tab (index: 0)
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.person),
        title: Center(
          child: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: <Widget>[
          Badge(
            label: Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            largeSize: 20,
            alignment: const AlignmentDirectional(-1, 0),
            child: IconButton(
              icon: const Icon(Icons.shopping_cart),
              color: Colors.white,
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Item added to shopping cart:',
            textAlign: TextAlign.center, style: optionStyle),
        Text('$_counter items', style: optionStyle)
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
