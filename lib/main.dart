// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: extra_positional_arguments_could_be_named
// ignore_for_file: avoid_unnecessary_containers
// ignore_for_file: prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'quote.dart';
import 'quotecard.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Quote> quotes = [
    Quote(
        text: 'Be yourself; everyone else is already taken',
        author: 'Oscar Wilde'),
    Quote(
        text: 'I have nothing to declare except my genius',
        author: 'Oscar Wilde'),
    Quote(
        text: 'The truth is rarely pure and never simple',
        author: 'Oscar Wilde'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quotes of the Day'),
          backgroundColor: Colors.red[500],
          centerTitle: true,
        ),
        body: Container(
          color: Colors.grey[200],
          child: Center(
            child: Column(
              children: quotes
                  .map((quote) => QuoteCard(
                        quote: quote,
                        delete: () {
                          setState(() {
                            quotes.remove(quote);
                          });
                        },
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
