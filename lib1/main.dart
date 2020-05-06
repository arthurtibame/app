import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(home: QuoteList() //put claass name here
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Arthur Lin', text: "This is from quote.dart file data Arthur"),
    Quote(
        author: 'Benson Lin', text: "This is from quote.dart file data Benson"),
    Quote(author: 'Peter Lin', text: "This is from quote.dart file data Peter"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[600],
        appBar: AppBar(
          title: Text("This is my second App"), //Here is my title widget
          backgroundColor: Colors.orange,
        ),
        body: Column(
          // call a List namely quotes
          children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            }
            )).toList(),
        ));
  }
}
