import 'package:cake_app/bloc/ButtonCounterState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'ButtonCounterEvent.dart';

class ButtonCounterBloc extends Bloc<ButtonCounterEvent, ButtonCounterState> {
  ButtonCounterBloc() : super(ButtonCounterState(value: 0)) {
    on<ButtonCounterIncrement>(_increment);
    on<ButtonCounterDecrement>(_decrement);
  }

  Future<void> _increment(
      ButtonCounterIncrement event, Emitter<ButtonCounterState> emit) async {
    emit(state.copyWith(value: state.value + 1));
  }

  Future<void> _decrement(
      ButtonCounterDecrement event, Emitter<ButtonCounterState> emit) async {
    emit(state.copyWith(value: state.value - 1));
  }
}
