import 'package:app/utilities/Colors/colors.dart';
import 'package:flutter/material.dart';

import '../../../Controllers/widgets/text_widget.dart';

class MCQSResultController extends StatelessWidget {
  const MCQSResultController({super.key, required this.result});
  final int result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.tranparent,
        elevation: 0,
        leading: GestureDetector(
          // overlayColor: AppColors.tranparent,
          child: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onTap: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            color: AppColors.tranparent,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // const Text("Result: ", style: ,),
                      TextWidget("Result : ", 18.0, AppColors.black,
                          FontWeight.w600, 1, TextAlign.center),
                      TextWidget("${result.toString()} ", 20.0, AppColors.black,
                          FontWeight.bold, 1, TextAlign.center),
                    ],
                  ),
                ),
                const Divider(),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // const Text("Result: ", style: ,),
                      TextWidget("Correct Answer : ", 16.0, AppColors.black,
                          FontWeight.w500, 1, TextAlign.center),
                      TextWidget("${result.toString()} ", 20.0, AppColors.black,
                          FontWeight.w500, 1, TextAlign.center),
                    ],
                  ),
                ),
                const Divider(),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // const Text("Result: ", style: ,),
                      TextWidget("Wrong Answers : ", 16.0, AppColors.black,
                          FontWeight.w500, 1, TextAlign.center),
                      TextWidget("${result.toString()} ", 20.0, AppColors.black,
                          FontWeight.w500, 1, TextAlign.center),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
