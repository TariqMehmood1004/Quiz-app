import 'package:flutter/material.dart';

class TrueFalseController extends StatefulWidget {
  const TrueFalseController({super.key});

  @override
  State<TrueFalseController> createState() => _TrueFalseControllerState();
}

class _TrueFalseControllerState extends State<TrueFalseController> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('true false')),
    );
  }
}
