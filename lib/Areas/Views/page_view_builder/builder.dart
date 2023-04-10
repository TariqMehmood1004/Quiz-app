import 'package:app/utilities/Colors/colors.dart';
import 'package:flutter/material.dart';

class PageViewForQuestions extends StatefulWidget {
  const PageViewForQuestions({super.key});

  @override
  State<PageViewForQuestions> createState() => _PageViewForQuestionsState();
}

class _PageViewForQuestionsState extends State<PageViewForQuestions> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        color: AppColors.bluePink,
        borderRadius: BorderRadius.circular(15),
      ),
    ));
  }
}
