import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  final String msg;
  const ErrorMessage({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.error,
          color: Colors.red,
          size: 40,
        ),
        SizedBox(
          height: 20,
          child: Text('$msg'),
        )
      ],
    );
  }
}
