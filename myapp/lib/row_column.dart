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
  //Row
        // body: Row(         
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: <Widget>[
        //     const Text('Hello world!'),
        //     ElevatedButton(
        //       onPressed: (){},              
        //       child: const Text('Click me!'),
        //     ),
        //     Container(
        //       color: Colors.amberAccent.shade100,              
        //       padding: const EdgeInsets.all(30.0), 
        //       child: Text(
        //         'inside container'.toUpperCase(),
        //         style: const TextStyle(
        //           fontWeight: FontWeight.bold,
        //           fontSize: 12.0,                  
        //         ),
        //       ),                           
        //     )
        //   ],
        // ),
//Column
        // body: Row(                                   
        //   children:[
        //     Expanded(
        //       flex: 2,
        //       child: Image.asset('assets/panda.png'),              
        //     ),
        //     Expanded(
        //       flex: 1,
        //       child: Container(             
        //             padding: const EdgeInsets.all(20.0),
        //             color: Colors.cyan,
        //             child: const Text('One')
        //           ),
        //     ),                      
        //    Expanded(
        //     flex: 1,
        //      child: Container(
        //             padding: const EdgeInsets.all(20.0),
        //             color: Colors.red.shade100,
        //             child: const Text('Two')
        //           ),
        //    ),     
        //   Expanded(
        //     flex: 1,
        //     child: Container(
        //           padding: const EdgeInsets.all(20.0),
        //           color: Colors.blue.shade100,
        //           child: const Text('Three')
        //         ),
        //   ),           
        //   ],
        //   ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: const Text('+', style: TextStyle(fontSize: 44,),
          ),
        ));
  }
}
