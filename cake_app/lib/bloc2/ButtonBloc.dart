import 'package:cake_app/bloc2/ButtonEvent.dart';
import 'package:cake_app/bloc2/ButtonState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonBloc extends Bloc<ButtonEvent, ButtonState> {
  ButtonBloc()
      : super(ButtonState(
          buttonStateStatus: ButtonStateStatus.initial,
          value: 0,
        )) {
    on<ButtonCounter>(_counter);
  }

  Future<void> _counter(ButtonCounter event, Emitter<ButtonState> emit) async {
    emit(state.copyWith(
      buttonStateStatus: ButtonStateStatus.loading,
      value: event.index,
    ));
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(
      buttonStateStatus: ButtonStateStatus.loaded,
    ));
  }
}
