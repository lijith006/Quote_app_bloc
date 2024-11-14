import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'quote_event.dart';
part 'quote_state.dart';

class QuoteBloc extends Bloc<QuoteEvent, QuoteState> {
  QuoteBloc() : super(QuoteInitial()) {
    on<QuoteRequestEvent>((event, emit) async {
      // TODO: implement event handler

      emit(QuoteStateLoading());
      print('Quote request triggered');

      await Future.delayed(Duration(seconds: 3), () {
        emit(QuoteStateLoaded(
            quote:
                '“If you only ever give 90% in training then you will only ever give 90% when it matters.”'));
      });
    });
  }
}
