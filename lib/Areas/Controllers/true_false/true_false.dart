import 'dart:async';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../../../utilities/Colors/colors.dart';
import '../../Models/true_false_list/true_false_list.dart';
import '../../Views/Result/result/result.dart';

class TrueFalseController extends StatefulWidget {
  const TrueFalseController({super.key});

  @override
  State<TrueFalseController> createState() => _TrueFalseControllerState();
}

class _TrueFalseControllerState extends State<TrueFalseController> {
  final _controller = PageController(initialPage: 0);

  int questionIndex = 0;
  final audioPlayer = AudioCache();

  bool isPressed = false;
  bool isButtonShow = false;
  int score = 0;

  Color color =
      Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(0.7);

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  //
  // get the text in the TextField and start the Second Screen
  void storedResult(BuildContext context) {
    int correct = score;
    int totalQuestions = trueFalseQuestions.length;
    int wrongAnswers = totalQuestions - correct;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultController(
          result: correct,
          totalLength: totalQuestions,
          wrongAnswers: wrongAnswers,
        ),
      ),
    );
  }

  int seconds = 10;
  Timer? timer;

  startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (seconds < 1) {
          _controller.nextPage(
              duration: const Duration(microseconds: 250),
              curve: Curves.linear);
          if (questionIndex >= trueFalseQuestions.length - 1) {
            storedResult(context);
          }
          timer.cancel();
          seconds = 10;
          startTimer();
        } else if (seconds > 0) {
          seconds--;
        } else {
          timer.cancel();
        }
      });
      // if (questionIndex >= trueFalseQuestions.length - 1) {
      //   storedResult(context);
      // }
    });
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  //
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
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.7,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          decoration: BoxDecoration(
            color: AppColors.white,
          ),
          child: PageView.builder(
            controller: _controller,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: trueFalseQuestions.length,
            itemBuilder: (context, index) {
              questionIndex = index;
              return Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 16.0),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      color: AppColors.black,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          color: AppColors.tranparent,
                          width: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Question".toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.white,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "${index + 1} / ${trueFalseQuestions.length}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.white,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Text(
                              "$seconds%",
                              style: TextStyle(
                                color: AppColors.green2,
                                fontSize: 10,
                              ),
                            ),
                            Container(
                              color: AppColors.tranparent,
                              width: 25,
                              height: 25,
                              child: CircularProgressIndicator(
                                value: seconds / 7,
                                valueColor:
                                    AlwaysStoppedAnimation(AppColors.blue),
                                strokeWidth: 1,
                                backgroundColor: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: AppColors.color7,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Text(
                        trueFalseQuestions[index].questionText!,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.blue,
                          fontSize: 13,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  for (int i = 0;
                      i < trueFalseQuestions[index].answers!.length;
                      i++)
                    Column(
                      children: [
                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            bottom: 8.0,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.color1,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: MaterialButton(
                            splashColor: AppColors.tranparent,
                            focusColor: AppColors.tranparent,
                            hoverColor: AppColors.tranparent,
                            highlightColor: AppColors.tranparent,
                            onPressed: () {
                              setState(() {
                                audioPlayer.play('music/note1.wav');

                                if (trueFalseQuestions[index]
                                    .answers!
                                    .entries
                                    .toList()[i]
                                    .value) {
                                  score += 1;
                                  _controller.nextPage(
                                      duration:
                                          const Duration(microseconds: 250),
                                      curve: Curves.linear);
                                  timer!.cancel();
                                  seconds = 10;

                                  if (index >= trueFalseQuestions.length - 1) {
                                    Future.delayed(
                                        const Duration(milliseconds: 300), () {
                                      timer!.cancel();
                                      storedResult(context);
                                    });
                                  } else {
                                    timer!.cancel();
                                    seconds = 10;
                                    startTimer();
                                  }
                                } else {
                                  _controller.nextPage(
                                    duration: const Duration(microseconds: 250),
                                    curve: Curves.linear,
                                  );
                                  if (index >= trueFalseQuestions.length - 1) {
                                    Future.delayed(
                                        const Duration(milliseconds: 300), () {
                                      timer!.cancel();
                                      storedResult(context);
                                    });
                                  } else {
                                    timer!.cancel();
                                    seconds = 10;
                                    startTimer();
                                  }
                                }
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 260,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2.0, vertical: 3.0),
                                  child: Text(
                                    trueFalseQuestions[index]
                                        .answers!
                                        .keys
                                        .toList()[i],
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.check_circle,
                                  size: 18,
                                  color: AppColors.color3,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              );
            },
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  backgroundColor: AppColors.black,
                  heroTag: "back",
                  onPressed: () {
                    // showModel(context, score);
                    _controller.previousPage(
                        duration: const Duration(microseconds: 250),
                        curve: Curves.linear);
                    seconds = 10;
                    startTimer();
                  },
                  child: const Icon(Icons.arrow_back_ios),
                ),
                const SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  backgroundColor: AppColors.black,
                  heroTag: "result",
                  onPressed: () {
                    setState(() {
                      storedResult(context);
                    });
                  },
                  child: const Icon(Icons.mark_as_unread),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color randomColors() {
    return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(0.7);
  }

  Future<dynamic> showModel(BuildContext context, int result) {
    return showModalBottomSheet(
      isScrollControlled: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
      ),
      context: context,
      builder: (context) {
        return Container(
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Center(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: AppColors.tranparent,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Result:',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 30,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    result.toString(),
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 30,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
