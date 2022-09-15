import 'package:cake_app/bloc/_all.dart';
import 'package:cake_app/bloc2/ButtonBloc.dart';
import 'package:cake_app/bloc2/ButtonState.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_elegant_number_button/flutter_elegant_number_button.dart';

class Button extends StatefulWidget {
  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(Icons.add),
          color: Colors.white,
          iconSize: 25,
          onPressed: () {
            context.read<ButtonCounterBloc>().add(ButtonCounterIncrement());
          },
        ),
        BlocBuilder<ButtonCounterBloc, ButtonCounterState>(
          builder: (context, buttonCounterState) {
            return Text(
              '${buttonCounterState.value}',
              style: const TextStyle(color: Colors.white, fontSize: 20),
            );
          },
        ),
        BlocBuilder<ButtonCounterBloc, ButtonCounterState>(
          builder: (context, state) {
            return IconButton(
              icon: const Icon(Icons.remove),
              color: Colors.white,
              iconSize: 25,
              onPressed: () {
                state.value > 0
                    ? context
                        .read<ButtonCounterBloc>()
                        .add(ButtonCounterDecrement())
                    : null;
              },
            );
          },
        ),
        SizedBox(height: 75),
        BlocBuilder<ButtonCounterBloc, ButtonCounterState>(
          builder: (context, buttonCounterState) {
            return Price(currentIndex: buttonCounterState.value);
          },
        )
      ],
    );
  }
}

class Price extends StatelessWidget {
  final int currentIndex;
  const Price({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double currentPrice = 24;
    return BlocBuilder<ButtonBloc, ButtonState>(
      builder: (context, buttonState) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '\$${currentPrice * currentIndex + (buttonState.value * 2)}',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        );
      },
    );
  }
}
