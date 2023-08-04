import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time ='...loading';
  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Helsinki', flag: 'helsinki.png', url:'Europe/Helsinki');
    await instance.getData();
    // print(instance.time);
    setState(() {     
      time = instance.time!; //assigning time of our instance of worldtime class after checking for null ('!')
    });
  }
  @override
  void initState() {
    super.initState();
    setupWorldTime();  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Text(time),
      ),
    );
  }
}
