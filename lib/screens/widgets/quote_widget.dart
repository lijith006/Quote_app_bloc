import 'package:flutter/material.dart';

class QuoteWidget extends StatelessWidget {
  final String quote;
  const QuoteWidget({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.blueGrey),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Center(
            child: Text("$quote"),
          ),
        ),
      ),
    );
  }
}
