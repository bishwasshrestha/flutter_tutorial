import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

//custom class
class WorldTime {
  String? location; //location name for the UI
  String? flag; //url to an asset flag icon
  String? url; //url to the json data
  String? time; // time in the location
  bool? isDaytime;

  WorldTime({this.location, this.flag, this.url});

//Future<void> is needed in an async function to tell dart that at some point once the async method is exectured it will return a void.
  Future<void> getData() async {
    try {
      final response = await http
          .get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      final data = jsonDecode(response.body);
      // print(data);

      //get properties from data
      String datetime = data['utc_datetime'];
      String offset = data['utc_offset'].substring(1,
          3); //getting offset time of +03:00 and capturing a substring of 03 only

      //create a date time object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      isDaytime = (now.hour > 6 && now.hour < 19) ? true : false;
      //set the time property
      time = DateFormat.jm().format(now);
      // print(time);
    } catch (e) {
      print('Error occured: $e');
      time = 'couldnot get time data';
    }
  }
}
