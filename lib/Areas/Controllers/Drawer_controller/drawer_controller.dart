import 'dart:io';
import 'package:flutter/material.dart';
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
        color: AppColors.color1,
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 300,
              padding: const EdgeInsets.all(8.0),
              margin:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
              decoration: BoxDecoration(
                color: AppColors.black,
                borderRadius: BorderRadius.circular(5.0),
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
                    width: 13.0,
                  ),
                  TextWidget(
                    "Tariq Mehmood".toUpperCase(),
                    14.0,
                    AppColors.white,
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
                          horizontal: 0.0, vertical: 10.0),
                      padding: const EdgeInsets.all(7.0),
                      decoration: BoxDecoration(
                          color: AppColors.black,
                          borderRadius: BorderRadius.circular(8.0)),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        child: Text(
                          'Question Type',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
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
                      child: Container(
                        padding: const EdgeInsets.all(7.0),
                        margin: const EdgeInsets.symmetric(vertical: 3.0),
                        decoration: BoxDecoration(
                          color: AppColors.tranparent,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: AppColors.black.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Image(
                                width: 20,
                                height: 20,
                                color: AppColors.black,
                                image: const AssetImage('images/question.png'),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            TextWidget(
                              "MCQs",
                              12.0,
                              Colors.black,
                              FontWeight.w400,
                              0,
                              TextAlign.center,
                            ),
                          ],
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
                                builder: (context) =>
                                    const TrueFalseController(),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(7.0),
                        margin: const EdgeInsets.symmetric(vertical: 1.0),
                        decoration: BoxDecoration(
                          color: AppColors.tranparent,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: AppColors.black.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Image(
                                width: 20,
                                height: 20,
                                color: AppColors.black.withOpacity(0.7),
                                image: const AssetImage('images/mcqs2.png'),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            TextWidget(
                              "True/False",
                              12.0,
                              AppColors.black,
                              FontWeight.w400,
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
            GestureDetector(
              onTap: () {
                exit(0);
              },
              child: Container(
                width: 70,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                margin: const EdgeInsets.only(bottom: 50, left: 40),
                decoration: BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.logout,
                      size: 12,
                      color: AppColors.white,
                    ),
                    Text(
                      'Logout',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
