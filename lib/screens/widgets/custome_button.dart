import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_app/screens/bloc/bloc/quote_bloc.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        //to do
        BlocProvider.of<QuoteBloc>(context).add(QuoteRequestEvent());
      },
      child: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.cyan),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Text(
              'Generate',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
