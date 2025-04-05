import 'package:flutter/material.dart';
import 'package:realistic_button/realistic_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Realistic Button Example', home: const RealisticButtonExample());
  }
}

class RealisticButtonExample extends StatefulWidget {
  const RealisticButtonExample({super.key});

  @override
  State<RealisticButtonExample> createState() => _RealisticButtonExampleState();
}

class _RealisticButtonExampleState extends State<RealisticButtonExample> {
  bool _buttonStatus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RealisticButton(
          size: 180,
          initialValue: _buttonStatus,
          onchange: (val) {
            setState(() {
              _buttonStatus = val;
            });
          },
          label: "Start/Stop",
        ),
      ),
    );
  }
}
