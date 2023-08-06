import 'package:flutter/material.dart';
import 'package:worldtime/pages/choose_location.dart';
import 'package:worldtime/pages/home.dart';
import 'package:worldtime/pages/loading.dart';

void main() => runApp(MaterialApp(
      // home: const Home(),
      initialRoute: '/', //overriding the map to display on load
      routes: {
        '/': (context) => const Loading(), //default landing page
        '/home': (context) => const Home(),
        '/location': (context) => const ChooseLocation()
      }));

