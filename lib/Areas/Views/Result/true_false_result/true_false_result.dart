// import 'package:app/utilities/Colors/colors.dart';
// import 'package:flutter/material.dart';

// import '../../../Controllers/widgets/text_widget.dart';

// class TrueFalseResultController extends StatefulWidget {
//   const TrueFalseResultController(
//       {super.key,
//       required this.result,
//       required this.totalLength,
//       required this.wrongAnswers});
//   final int result, totalLength, wrongAnswers;

//   @override
//   State<TrueFalseResultController> createState() =>
//       _TrueFalseResultControllerState();
// }

// class _TrueFalseResultControllerState extends State<TrueFalseResultController> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: AppColors.black,
//         appBar: AppBar(
//           backgroundColor: AppColors.black,
//           elevation: 0,
//           leading: GestureDetector(
//             // overlayColor: AppColors.tranparent,
//             child: const Icon(
//               Icons.arrow_back_ios,
//               color: Colors.grey,
//               size: 20,
//             ),
//             onTap: () => Navigator.of(context).pop(),
//           ),
//           centerTitle: true,
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               width: double.infinity,
//               color: AppColors.tranparent,
//               padding: const EdgeInsets.symmetric(horizontal: 30),
//               margin: const EdgeInsets.only(top: 100),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Center(
//                     child: Container(
//                       width: double.infinity,
//                       height: 100,
//                       padding: const EdgeInsets.all(20.0),
//                       decoration: BoxDecoration(
//                         color: AppColors.blackTransparent,
//                         borderRadius: BorderRadius.circular(8.0),
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           // const Text("Result: ", style: ,),
//                           TextWidget(
//                               "Total Question ".toUpperCase(),
//                               12.0,
//                               AppColors.white,
//                               FontWeight.w600,
//                               1,
//                               TextAlign.center),
//                           TextWidget(
//                               "${widget.totalLength.toString()} ",
//                               20.0,
//                               AppColors.white,
//                               FontWeight.bold,
//                               1,
//                               TextAlign.center),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const Divider(),
//                   Center(
//                     child: Container(
//                       height: 50,
//                       padding: const EdgeInsets.all(10.0),
//                       decoration: BoxDecoration(
//                         color: AppColors.blackTransparent,
//                         borderRadius: BorderRadius.circular(4.0),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           // const Text("Result: ", style: ,),
//                           TextWidget(
//                               "Correct Answer : ",
//                               12.0,
//                               AppColors.white.withOpacity(0.7),
//                               FontWeight.w400,
//                               0,
//                               TextAlign.center),
//                           TextWidget(
//                               "${widget.result.toString()} ",
//                               12.0,
//                               AppColors.white.withOpacity(0.7),
//                               FontWeight.w400,
//                               0,
//                               TextAlign.center),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const Divider(),
//                   Center(
//                     child: Container(
//                       height: 50,
//                       padding: const EdgeInsets.all(10.0),
//                       decoration: BoxDecoration(
//                         color: AppColors.blackTransparent,
//                         borderRadius: BorderRadius.circular(4.0),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           // const Text("Result: ", style: ,),
//                           TextWidget(
//                               "Wrong Answers : ",
//                               12.0,
//                               AppColors.white.withOpacity(0.7),
//                               FontWeight.w300,
//                               0,
//                               TextAlign.center),
//                           TextWidget(
//                               "${widget.wrongAnswers.toString()} ",
//                               12.0,
//                               AppColors.white.withOpacity(0.7),
//                               FontWeight.w400,
//                               0,
//                               TextAlign.center),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               width: double.infinity,
//               height: 50,
//               decoration: BoxDecoration(
//                 color: AppColors.blackTransparent,
//                 border: Border.all(
//                   color: AppColors.blackTransparent,
//                 ),
//               ),
//               child: Center(
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       Icons.phone_android,
//                       size: 16,
//                       color: AppColors.white,
//                     ),
//                     const SizedBox(
//                       width: 30,
//                     ),
//                     Text(
//                       'Mobile Application Development '.toUpperCase(),
//                       style: TextStyle(
//                         color: AppColors.white,
//                         fontSize: 11,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../../../../utilities/Colors/colors.dart';
import '../../../Controllers/widgets/text_widget.dart';

class TrueFalseResultController extends StatefulWidget {
  const TrueFalseResultController(
      {super.key,
      required this.result,
      required this.totalLength,
      required this.wrongAnswers});
  final int result, totalLength, wrongAnswers;

  @override
  State<TrueFalseResultController> createState() =>
      _TrueFalseResultControllerState();
}

class _TrueFalseResultControllerState extends State<TrueFalseResultController> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          elevation: 0,
          leading: GestureDetector(
            // overlayColor: AppColors.tranparent,
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
              size: 20,
            ),
            onTap: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              color: AppColors.tranparent,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              margin: const EdgeInsets.only(top: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: AppColors.blackTransparent,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // const Text("Result: ", style: ,),
                          TextWidget(
                              "Total Question ".toUpperCase(),
                              12.0,
                              AppColors.white,
                              FontWeight.w600,
                              1,
                              TextAlign.center),
                          TextWidget(
                              "${widget.totalLength.toString()} ",
                              20.0,
                              AppColors.white,
                              FontWeight.bold,
                              1,
                              TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: AppColors.tranparent,
                  ),
                  Center(
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: AppColors.blackTransparent,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // const Text("Result: ", style: ,),
                          TextWidget(
                              "Correct Answer : ",
                              12.0,
                              AppColors.white.withOpacity(0.7),
                              FontWeight.w400,
                              0,
                              TextAlign.center),
                          TextWidget(
                              "${widget.result.toString()} ",
                              12.0,
                              AppColors.white.withOpacity(0.7),
                              FontWeight.w400,
                              0,
                              TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: AppColors.tranparent,
                  ),
                  Center(
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: AppColors.blackTransparent,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // const Text("Result: ", style: ,),
                          TextWidget(
                              "Wrong Answers : ",
                              12.0,
                              AppColors.white.withOpacity(0.7),
                              FontWeight.w300,
                              0,
                              TextAlign.center),
                          TextWidget(
                              "${widget.wrongAnswers.toString()} ",
                              12.0,
                              AppColors.white.withOpacity(0.7),
                              FontWeight.w400,
                              0,
                              TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.blackTransparent,
                border: Border.all(
                  color: AppColors.blackTransparent,
                ),
              ),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone_android,
                      size: 16,
                      color: AppColors.white,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Mobile Application Development '.toUpperCase(),
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
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
