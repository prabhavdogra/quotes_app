// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: prefer_const_constructors_in_immutables
// ignore_for_file: avoid_unnecessary_containers
// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final void Function() delete;
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                child: Text(
                  quote.text,
                  style: TextStyle(
                    fontFamily: 'Arial',
                    color: Colors.grey[600],
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  quote.author,
                  style: TextStyle(
                    fontFamily: 'Arial',
                    color: Colors.grey[800],
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            FlatButton.icon(
              onPressed: delete,
              label: Text('Delete'),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
