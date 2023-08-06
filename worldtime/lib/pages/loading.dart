import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Helsinki', flag: 'helsinki.png', url: 'Europe/Helsinki');
    await instance.getData();

//Navigating to home page carrying the data available on the instance of class WorldTime
//cant use 'BuildContext's across async gaps therefore if condition ensures that the statement is executed once the context is mounted.
    if (context.mounted) {
      Navigator.pushReplacementNamed(context, '/home', arguments: {
        'location': instance.location,
        'flag': instance.flag,
        'time': instance.time,
        'isDaytime': instance.isDaytime,
      });
    }
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(41, 98, 255, 1),
      body: Center(
        child: SpinKitSpinningLines(
          color: Colors.amber,
          size: 150.0,
        ),
      ),
    );
  }
}
