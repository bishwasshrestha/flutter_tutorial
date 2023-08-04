import 'package:http/http.dart' as http;
import 'dart:convert';

//custom class
class WorldTime {
  String? location; //location name for the UI
  String? time; // time in the location
  String? flag; //url to an asset flag icon
  String? url; //url to the json data

  WorldTime({this.location, this.flag, this.url});

  Future<void> getData() async {
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

    //set the time property
    time = now.toString();

  }
}
