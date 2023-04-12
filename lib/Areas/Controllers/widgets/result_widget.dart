import 'package:app/utilities/Colors/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultConroller extends StatefulWidget {
  const ResultConroller({super.key});

  @override
  State<ResultConroller> createState() => _ResultConrollerState();
}

class _ResultConrollerState extends State<ResultConroller> {
  int n = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: GestureDetector(
          // overlayColor: AppColors.tranparent,
          child: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onTap: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
      ),
      body: resultWidget(
        result: n,
      ),
    );
  }
}

// ignore: camel_case_types
class resultWidget extends StatelessWidget {
  const resultWidget({super.key, required this.result});

  final int result;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.7,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        decoration: BoxDecoration(
          color: AppColors.white,
        ),
        child: Row(
          children: [
            const Text("Result"),
            Text(result.toString()),
          ],
        ),
      ),
    );
  }
}
