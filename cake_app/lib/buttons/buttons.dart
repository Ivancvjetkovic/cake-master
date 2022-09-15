import 'package:cake_app/bloc2/ButtonBloc.dart';
import 'package:cake_app/bloc2/ButtonEvent.dart';
import 'package:cake_app/bloc2/ButtonState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OutLinedButton extends StatefulWidget {
  const OutLinedButton({super.key});

  @override
  State<OutLinedButton> createState() => _OutLinedButtonState();
}

class _OutLinedButtonState extends State<OutLinedButton> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ButtonBloc, ButtonState>(
      builder: (context, buttonState) {
        return Wrap(
          children: List<Widget>.generate(
            4,
            (int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ChoiceChip(
                  backgroundColor: Colors.grey,
                  selectedColor: Colors.green,
                  label: Text('${index + 1} KG'),
                  selected: buttonState.value == index,
                  onSelected: (bool selected) {
                    context.read<ButtonBloc>().add(ButtonCounter(index: index));
                  },
                ),
              );
            },
          ).toList(),
        );
      },
    );
  }
}
