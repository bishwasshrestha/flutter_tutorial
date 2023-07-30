import 'package:flutter/material.dart';
import 'Quote.dart';

void main() => runApp(const MaterialApp(
  home: QuoteList()
));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<QuoteList> {

  // List<String> quotes = [
  //   'Darr ke age jeet hai.',
  //   'Jo dar gaya, woh mar gaya.',
  //   'Har kutte ka din aata hai.',
  //   'Jo jeeta wahi sikandar, jo haraa woh bandar'
  // ];
  List<Quote> quotes = [
    Quote(author: 'John Abraham', text: 'Darr ke aga jeet hai!'),
     Quote(author: 'Gabbar Singh', text: 'Jo dar gaya, woh mar gaya!'),
      Quote(author: 'Sunil Shetty', text: 'Har kutte ke din aate hai!'),
      Quote(author: 'Amir Khan', text: 'Jo jeeta woh sikandar, jo hara woh bandar')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
      appBar: AppBar(
        title: const Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding (
        padding: const EdgeInsets.all(10.0),
        child: Column(     
          crossAxisAlignment: CrossAxisAlignment.start,        
          children: quotes.map((quote)=>Text('${quote.author}-${quote.text}')).toList(),        
        ),
      )
    );
  }
}