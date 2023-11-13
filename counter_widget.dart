import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  CounterWidgetState createState() => CounterWidgetState();
}

class CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Counter: $counter',
          style: const TextStyle(
            fontSize: 18.0,
            color: Colors.green,
          ),
        ),
        const SizedBox(height: 10,),
        ElevatedButton(
          onPressed: incrementCounter,
          child: const Text('Increment'),
        ),
      ],
    );
  }
}