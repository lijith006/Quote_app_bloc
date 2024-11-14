import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_app/screens/bloc/bloc/quote_bloc.dart';
import 'package:quote_app/screens/widgets/custome_button.dart';
import 'package:quote_app/screens/widgets/error_message.dart';
import 'package:quote_app/screens/widgets/quote_widget.dart';
// import 'package:quote_app/screens/widgets/quote_widget.dart';

class QuotePage extends StatelessWidget {
  const QuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quotes'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // QuoteWidget(
            //     quote:
            //         "Be who you are and say what you feel, because those who mind don't matter, and those who matter don't mind"),
            Expanded(child: Center(child:
                BlocBuilder<QuoteBloc, QuoteState>(builder: (context, state) {
              if (state is QuoteInitial) {
                return const Text('Quote is  waiting...');
              } else if (state is QuoteStateLoading) {
                return const CircularProgressIndicator(
                  color: Colors.purple,
                );
              } else if (state is QuoteStateLoaded) {
                return QuoteWidget(quote: state.quote);
              } else if (state is QuoteStateError) {
                return ErrorMessage(msg: state.msg);
              }
              return const ErrorMessage(msg: "Something went wrong");
            }))),
            const CustomeButton()
          ],
        ),
      ),
    );
  }
}
