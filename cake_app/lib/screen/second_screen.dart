import 'package:cake_app/bloc/ButtonCounterBloc.dart';
import 'package:cake_app/bloc2/ButtonState.dart';
import 'package:cake_app/buttons/buttons.dart';
import 'package:cake_app/buttons/counter_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc2/ButtonBloc.dart';

const int currentIndex = 0;

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int? _value = 0;
  @override
  Widget build(BuildContext context) {
    int image = 0;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ButtonCounterBloc(),
        ),
        BlocProvider(
          create: (context) => ButtonBloc(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
            title: const Text(''),
            backgroundColor: const Color.fromARGB(255, 59, 33, 104),
            elevation: 0,
            leading: GestureDetector(
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.favorite_outline),
                onPressed: () {},
              ),
            ]),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: const Color.fromARGB(255, 59, 33, 104),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Fruits Cake',
                      style: TextStyle(fontSize: 25, color: Colors.grey),
                    ),
                  ),
                  const Text(
                    'strawberry & kiwi special',
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 190, 173, 15)),
                  ),
                  const OutLinedButton(),
                  BlocBuilder<ButtonBloc, ButtonState>(
                    builder: (context, buttonState) {
                      return Row(
                        children: [
                          (buttonState.buttonStateStatus ==
                                  ButtonStateStatus.loading)
                              ? const Expanded(
                                  child: SizedBox(
                                    height: 200,
                                    width: 300,
                                    child: Center(
                                      child: CircularProgressIndicator(
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                )
                              : Container(
                                  height: 200,
                                  width: 300,
                                  decoration: () {
                                    switch (buttonState.value) {
                                      case 0:
                                        return const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'images/cake0.png')),
                                        );
                                      case 1:
                                        return const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'images/cake1.png')),
                                        );
                                      case 2:
                                        return const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'images/cake2.png')),
                                        );
                                      case 3:
                                        return const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'images/cake3.png')),
                                        );

                                      default:
                                        return const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'images/cake0.png')),
                                        );
                                    }
                                  }()),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Button()],
                            ),
                          )
                        ],
                      );
                    },
                  ),
                  BlocBuilder<ButtonBloc, ButtonState>(
                    builder: (context, state) {
                      return Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 90,
                                width: 50,
                                // ignore: sort_child_properties_last
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.egg_rounded,
                                      color: Colors.white,
                                      size: 50,
                                    ),
                                    Text(
                                      '4 Eggs',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 20, 8, 51),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20)),
                                ),
                              ),
                            ),
                            const SizedBox(
                                height: 90.0,
                                width: 12.0,
                                child: VerticalDivider(color: Colors.white)),
                            Expanded(
                              child: Container(
                                // ignore: sort_child_properties_last
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.cake_sharp,
                                      color: Colors.white,
                                      size: 50,
                                    ),
                                    Text(
                                      '2 tsp Vanilla',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                height: 90,
                                width: 50,
                                color: const Color.fromARGB(255, 20, 8, 51),
                              ),
                            ),
                            const SizedBox(
                                height: 90.0,
                                width: 10.0,
                                child: VerticalDivider(color: Colors.white)),
                            Expanded(
                              child: Container(
                                height: 90,
                                width: 50,
                                // ignore: sort_child_properties_last
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.rice_bowl,
                                      color: Colors.white,
                                      size: 50,
                                    ),
                                    Text(
                                      '1 Cup Sugar',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 20, 8, 51),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),

                  const SizedBox(
                    height: 50.0,
                  ),
                  // ignore: sized_box_for_whitespace
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 2),
                        height: 100,
                        width: 100,
                        // ignore: prefer_const_constructors
                        child: Icon(
                          Icons.location_on,
                          size: 100,
                          color: const Color.fromARGB(255, 20, 8, 51),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            'DELIVERY',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          const Text(
                            'Location',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          const Text('Nr. Hamer Road, London',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // ignore: prefer_const_constructors
                        Text('Ratings',
                            style: const TextStyle(
                                fontSize: 20, color: Colors.white)),
                        // ignore: prefer_const_constructors
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        // ignore: prefer_const_constructors
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        // ignore: prefer_const_constructors
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        // ignore: prefer_const_constructors
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        // ignore: prefer_const_constructors
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        const Text(
                          '(55)',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
