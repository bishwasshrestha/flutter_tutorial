import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: NinjaCard()));

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          title: const Text('Ninja ID Card'),
          centerTitle: true,
          backgroundColor: Colors.grey.shade800,
          elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton(
          //updating state of the app with button click.
          onPressed: () {
            setState(() {
              ninjaLevel += 1;
            });
          },
          backgroundColor: Colors.grey.shade800,
          child: const Icon(Icons.add),
        ),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/panda.png'),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    radius: 40.0,
                  ),
                ),
                const Divider(
                  height: 90.0,
                  color: Color.fromRGBO(245, 245, 245, 0.09),
                ),
                const Text(
                  'NAME',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Text(
                  'Chun-Li',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
                  'CURRENT NINJA LEVEL',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  '$ninjaLevel',
                  style: const TextStyle(
                    color: Colors.amber,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'chun.li@thenetninja.co.uk',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                      ),
                    )
                  ],
                )
              ],
            )));
  }
}
