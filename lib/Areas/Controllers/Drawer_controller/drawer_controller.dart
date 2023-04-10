import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utilities/Colors/colors.dart';
import '../mcqs/mcqs_controller.dart';
import '../true_false/true_false.dart';
import '../widgets/text_widget.dart';

class DrawerControllerScreen extends StatefulWidget {
  const DrawerControllerScreen({super.key});

  @override
  State<DrawerControllerScreen> createState() => _DrawerControllerScreenState();
}

class _DrawerControllerScreenState extends State<DrawerControllerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.color6,
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 20),
            decoration: BoxDecoration(
              color: AppColors.tranparent,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 17,
                  backgroundImage: AssetImage('images/tm.jpg'),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                TextWidget(
                  "Tariq Mehmood".toUpperCase(),
                  16.0,
                  AppColors.black,
                  FontWeight.w600,
                  0,
                  TextAlign.center,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: 260,
              height: 400,
              color: AppColors.tranparent,
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 10.0),
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(width: .4, color: AppColors.white),
                    )),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        'Question Type'.toUpperCase(),
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: AppColors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  GestureDetector(
                    onTap: () {
                      // here is coming a issue...
                      setState(
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MCQSController(),
                            ),
                          );
                        },
                      );
                    },
                    child: Material(
                      color: Colors.transparent,
                      child: Container(
                        padding: const EdgeInsets.all(5.0),
                        color: AppColors.tranparent,
                        margin: const EdgeInsets.symmetric(vertical: 3.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Image(
                              width: 20,
                              height: 20,
                              image: AssetImage('images/mcqs.png'),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            TextWidget(
                              "MCQs",
                              12.0,
                              AppColors.black,
                              FontWeight.w500,
                              0,
                              TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TrueFalseController(),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      color: AppColors.tranparent,
                      margin: const EdgeInsets.symmetric(vertical: 3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Image(
                            width: 20,
                            height: 20,
                            image: AssetImage('images/mcqs2.png'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          TextWidget(
                            "True/False",
                            12.0,
                            AppColors.black,
                            FontWeight.w500,
                            0,
                            TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
            child: const Text('dd'),
          ),
        ],
      ),
    );
  }
}
