import 'package:flutter/material.dart';

class MCQSResultController extends StatelessWidget {
  const MCQSResultController({super.key, required this.result});
  final int result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Result: ${result.toString()}"),
        ],
      ),
    );
  }
}
