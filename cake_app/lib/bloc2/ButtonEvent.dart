// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class ButtonEvent {}

class ButtonCounter extends ButtonEvent {
  int index;
  ButtonCounter({
    required this.index,
  });
}
