import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
//A value of type 'Object?' can't be assigned to a variable of type 'Map<dynamic, dynamic>' therefore declaring the received value as map insures the data recieved is map object. adding ? to modalroute.of(context) insures null safety.
    data = data.isNotEmpty
        ? data
        : ModalRoute.of(context)?.settings.arguments as Map;

    //set background
    String bgImage = data['isDaytime'] ? 'day.png' : 'night.png';
    Color bgColor = data['isDaytime'] ? Colors.blue : Colors.indigo.shade700;

    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('World Time'),
        //   centerTitle: true,
        //   elevation: 0,
        // ),
        backgroundColor: bgColor,
        body: SafeArea(
            child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/$bgImage'),
            fit: BoxFit.cover,
          )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(children: [
              TextButton.icon(
                  style: const ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(Colors.black),
                  ),
                  onPressed: () async {
                    dynamic result =
                        await Navigator.pushNamed(context, '/location') as Map;
                    setState(() {
                      data = {
                        'time': result['time'],
                        'location': result['location'],
                        'isDaytime': result['isDaytime'],
                        'flag': result['flag']
                      };
                    });
                  },
                  icon: const Icon(
                    Icons.edit_location,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Edit Location',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['location'],
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                        letterSpacing: 2.0),
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              Text(
                data['time'],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 66.0,
                ),
              )
            ]),
          ),
        )));
  }
}
