import 'package:flutter/material.dart';

class MCQSController extends StatefulWidget {
  const MCQSController({super.key});

  @override
  State<MCQSController> createState() => _MCQSControllerState();
}

class _MCQSControllerState extends State<MCQSController> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('MCQS')),
    );
  }
}
