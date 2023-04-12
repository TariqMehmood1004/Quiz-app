import 'package:flutter/material.dart';

import '../../../utilities/Colors/colors.dart';
import '../../Views/courses/Flutter/flutter_course_contents.dart';
import '../widgets/text_widget.dart';

class DashboardControllerScreen extends StatefulWidget {
  const DashboardControllerScreen({super.key});

  @override
  State<DashboardControllerScreen> createState() =>
      _DashboardControllerScreenState();
}

class _DashboardControllerScreenState extends State<DashboardControllerScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  double angle = 0;
  bool isDrawerOpen = false;

  drawer(
      {double x = 0,
      double y = 0,
      double scale = 0,
      double angle = 0,
      bool isTrue = false}) {
    xOffset = x; //200;
    yOffset = y; //80;
    angle = angle; //6
    scaleFactor = scale; // 0.8;
    isDrawerOpen = isTrue; // true
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)
        ..rotateZ(angle),
      duration: const Duration(milliseconds: 180),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(isDrawerOpen ? 30.0 : 0.0),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 50, left: 20, right: 20.0),
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isDrawerOpen
                    ? InkWell(
                        onTap: () {
                          setState(() {
                            xOffset = 0;
                            yOffset = 0;
                            angle = 0;
                            scaleFactor = 1;
                            isDrawerOpen = false;
                          });
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                        ),
                      )
                    : InkWell(
                        onTap: () {
                          setState(() {
                            xOffset = 200;
                            yOffset = 120;
                            scaleFactor = 0.75;
                            angle = 6;
                            isDrawerOpen = true;
                          });
                        },
                        child: const Icon(
                          Icons.menu_rounded,
                        ),
                      ),
                const CircleAvatar(
                  radius: 17,
                  backgroundImage: AssetImage('images/tm.jpg'),
                ),
              ],
            ),
          ),
          SizedBox(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 20.0, top: 15.0),
                  color: AppColors.tranparent,
                  child: TextWidget("Courses".toUpperCase(), 18.0,
                      AppColors.black, FontWeight.w600, 2, TextAlign.start),
                ),
                const FlutterCourseContentsController(),
              ],
            ),
          ),
          // const PageViewForQuestions(),
        ],
      ),
    );
  }
}
