import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 15, 45, 70)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Bottom Navigatio Bar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int _counter = 0;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  static TextStyle optionStyle = GoogleFonts.eduSaBeginner(
      textStyle: const TextStyle(
    fontSize: 38,
  ));

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetOptions = <Widget>[
      //a widget definition for individual navigation bar
      //widgit for home tab (index: 0)
      Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('You have pushed the button:',
              textAlign: TextAlign.center, style: optionStyle),
          Text('$_counter times', style: optionStyle)
        ])),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
      //widget for school tab (index:1)
      Text('Index 1: School', style: optionStyle),
    ];

    //returning the scaffold widget to homepoge
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Center(
          child: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
          child: widgetOptions.elementAt(
              _selectedIndex)), //body loads widgets according to index of tab
      bottomNavigationBar: BottomNavigationBar(
        //bottom navigation bar
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue.shade800,
        onTap: _onItemTapped,
      ),
    );
  }
}
