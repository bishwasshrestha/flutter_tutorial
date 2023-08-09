import 'package:flutter/material.dart';
import 'package:test/pages/homepage.dart';

void main() => runApp(MaterialApp( 
    initialRoute: '/',    
      routes: {
        '/': (context) => const MyApp()        
        },
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0; 

  final List<Widget> widgetOptions = <Widget>[
    const MyHomePage(title: 'my home page'),
    const Center(child: Text('Index1: Shop'))
  ];

  void _onItemTapped(index) {
    setState(() {
      selectedIndex = index;      
    });
  } 

  @override
  Widget build(BuildContext context) {
    //returning the scaffold widget to homepoge
    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      //body loads widgets according to index of tab
      bottomNavigationBar: BottomNavigationBar(
        //bottom navigation bar
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue.shade800,
        onTap: _onItemTapped,
      ),
    );
  }
}
