import 'package:app/Areas/Controllers/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../../../utilities/Colors/colors.dart';

class FlutterCourseContentsController extends StatefulWidget {
  const FlutterCourseContentsController({super.key});

  @override
  State<FlutterCourseContentsController> createState() =>
      _FlutterCourseContentsControllerState();
}

class _FlutterCourseContentsControllerState
    extends State<FlutterCourseContentsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 15.0, right: 20.0, top: 10),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        color: AppColors.tranparent,
        borderRadius: BorderRadius.circular(6),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                debugPrint('tapped');
              },
              child: Container(
                width: 200,
                height: 180,
                decoration: BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.tranparent,
                        backgroundImage: const AssetImage('images/flutter.png'),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextWidget(
                        "Flutter",
                        16.0,
                        AppColors.white,
                        FontWeight.w700,
                        1,
                        TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextWidget(
                        "Flutter is an open-source UI software development kit created by Google...",
                        8.0,
                        AppColors.white,
                        FontWeight.w300,
                        0,
                        TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 180,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: AppColors.black,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.tranparent,
                      backgroundImage: const AssetImage('images/py.png'),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextWidget(
                      "Python",
                      16.0,
                      AppColors.white,
                      FontWeight.w700,
                      1,
                      TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextWidget(
                      "Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code.",
                      8.0,
                      AppColors.white,
                      FontWeight.w300,
                      0,
                      TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 200,
              height: 180,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: AppColors.bluePink2,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.tranparent,
                      backgroundImage: const AssetImage('images/cpp.png'),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextWidget(
                      "C++",
                      16.0,
                      AppColors.white,
                      FontWeight.w700,
                      1,
                      TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextWidget(
                      "C++ is a high-level, general-purpose programming language created by Danish computer scientist Bjarne Stroustrup.",
                      8.0,
                      AppColors.white,
                      FontWeight.w300,
                      0,
                      TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 200,
              height: 180,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: AppColors.color1,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.tranparent,
                      backgroundImage: const AssetImage('images/py.png'),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextWidget(
                      "Python",
                      16.0,
                      AppColors.black,
                      FontWeight.w700,
                      1,
                      TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextWidget(
                      "Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code.",
                      8.0,
                      AppColors.black,
                      FontWeight.w300,
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
    );
  }
}
