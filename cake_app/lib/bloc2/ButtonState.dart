// ignore_for_file: public_member_api_docs, sort_constructors_first
enum ButtonStateStatus {
  initial,
  loading,
  loaded,
}

class ButtonState {
  ButtonStateStatus buttonStateStatus;
  int value;

  ButtonState({
    required this.buttonStateStatus,
    required this.value,
  });

  ButtonState copyWith({
    ButtonStateStatus? buttonStateStatus,
    int? value,
  }) =>
      ButtonState(
        buttonStateStatus: buttonStateStatus ?? this.buttonStateStatus,
        value: value ?? this.value,
      );
}
