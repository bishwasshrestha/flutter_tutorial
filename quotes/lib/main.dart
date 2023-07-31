import 'package:flutter/material.dart';
import 'Quote.dart';
import 'quote_card.dart';

void main() => runApp(const MaterialApp(
      home: QuoteList(),
    ));

//stateful widget declaratioin
class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _MyWidgetState();
}

//stateful widget definition
class _MyWidgetState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'John Abraham', text: 'Darr ke aga jeet hai!'),
    Quote(author: 'Gabbar Singh', text: 'Jo dar gaya, woh mar gaya!'),
    Quote(author: 'Sunil Shetty', text: 'Har kutte ke din aate hai!'),
    Quote(
        author: 'Amir Khan',
        text: 'Jo jeeta wohi sikandar, jo hara woh bandar!')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          title: const Text('Quotes'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: quotes.map((quote) => quotecard(quote)).toList(),
          ),
        ));
  }

// //Cards
//   Widget quoteTemplate(quote) {
//     return quotecard(quote);
//   }

}