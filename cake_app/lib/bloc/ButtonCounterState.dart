class ButtonCounterState{

int value;

ButtonCounterState({required this.value});

ButtonCounterState copyWith({int? value}) => ButtonCounterState(value: value ?? this.value);


}