import 'package:flutter/material.dart';
import 'greeting_widget.dart';
import 'counter_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF1F1F1),
        appBar: AppBar(
          title: const Text('Widgets Practice'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const GreetingWidget(message: 'Hello, Flutter!'),
              const SizedBox(height: 10,),
              const Text("Here is my counter app, Check it!", style: TextStyle(color: Colors.blue, fontSize: 15),),
              const SizedBox(height: 20,),
              const CounterWidget(),
              const SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.all(20.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                child: const Text("Additional Widget\nthat doesn't do anything", textAlign: TextAlign.center),
              ),
            ],
          ),
        ),
      ),
    );
  }
}