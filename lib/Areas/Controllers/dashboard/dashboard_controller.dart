import 'package:flutter/material.dart';

import '../../../utilities/Colors/colors.dart';

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

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: AppColors.color1,
        borderRadius: BorderRadius.circular(isDrawerOpen ? 30.0 : 0.0),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 50, left: 20, right: 20.0),
            padding: const EdgeInsets.all(12.0),
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
                            scaleFactor = 1;
                            isDrawerOpen = false;
                          });
                        },
                        child: const Icon(
                          Icons.close,
                        ),
                      )
                    : InkWell(
                        onTap: () {
                          setState(() {
                            xOffset = 280;
                            yOffset = 170;
                            scaleFactor = 0.6;
                            isDrawerOpen = true;
                          });
                        },
                        child: const Icon(
                          Icons.menu_rounded,
                        ),
                      ),
                Column(
                  children: [
                    Text(
                      'Quiz App'.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                const CircleAvatar(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
