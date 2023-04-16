# Notio Quizzee App

### This project is using the MVC software architecture pattern.

### Visually output




https://user-images.githubusercontent.com/116074810/232344029-8a6577bb-2ce6-4d48-979c-359c29208dfd.mp4



## Views

### Main.dart file

The given code appears to be a Flutter application written in Dart programming language. Let me provide a brief overview of what this code does:

The main() function sets the system UI overlay style using SystemChrome.setSystemUIOverlayStyle(), which makes the status bar transparent. SystemUiOverlayStyle is a class in Flutter that allows you to customize the appearance of the system overlays, such as the status bar and the navigation bar.

The main() function then calls the runApp() function, which starts the Flutter application and passes an instance of MyApp as the root widget of the application.

MyApp is a stateless widget that serves as the entry point of the application. It contains a MaterialApp widget, which is a container for a Flutter Material Design application. The debugShowCheckedModeBanner property is set to false, which hides the "debug" banner on the top right corner of the screen in debug mode.

The home property of MaterialApp is set to a Scaffold widget, which provides a basic structure for a Material Design app. The body of the Scaffold contains a Stack widget that stacks two children widgets on top of each other: DrawerControllerScreen() and DashboardControllerScreen().

DrawerControllerScreen and DashboardControllerScreen are assumed to be custom widget classes representing the UI for a drawer and a dashboard screen respectively.

Note: It is worth mentioning that the code snippet provided is incomplete and might not be able to run standalone. It might require additional imports and implementation of DrawerControllerScreen and DashboardControllerScreen widgets.


### Dashboard screen controller

The code provided appears to be part of a Flutter application in Dart programming language. It represents the stateful widget _DashboardControllerScreenState, which is responsible for building the UI for the dashboard screen in the application. Let me provide a brief overview of what this code does:

The _DashboardControllerScreenState class has several instance variables such as xOffset, yOffset, scaleFactor, angle, and isDrawerOpen that are used to control the animation and appearance of the dashboard screen.

The drawer() method is a custom method that sets the values of the instance variables to control the position, scale, rotation, and visibility of the dashboard screen. This method is called when the drawer is opened or closed.

The build() method is responsible for building the UI of the dashboard screen. It returns an AnimatedContainer widget that animates its transformation properties based on the values of the instance variables.

The dashboard screen UI consists of several child widgets, including a container for the app bar at the top, a column for the course contents, and a commented-out PageViewForQuestions widget. The app bar contains an icon that toggles between a menu icon and a back icon based on the value of isDrawerOpen variable. It also displays a circle avatar with a background image.

The TextWidget is a custom widget used to display text with customizable font size, color, weight, and alignment.

The FlutterCourseContentsController is assumed to be a custom widget class representing the UI for the course contents in the dashboard screen.

Note: It is worth mentioning that the code snippet provided is incomplete and might not be able to run standalone. It might require additional imports and implementation of custom widgets referenced in the code.




### Custom drawer screen controller

The given code appears to be a Flutter widget called DrawerControllerScreen that extends StatefulWidget and contains a build method for constructing the user interface.

The DrawerControllerScreen widget has the following structure:

A Container widget that serves as the background of the screen. It has a decoration property that specifies the background color (AppColors.color1) and border radius (BorderRadius.circular(0.0)).
A SafeArea widget that contains the main content of the screen. It has a child property that contains a Column widget.
Inside the Column widget, there are three main sections:
A container that displays user profile information, such as the user's name and avatar.
A container that displays options for different question types, such as multiple-choice questions (MCQs) and true/false questions. These options are wrapped in GestureDetector widgets to handle tap events and navigate to the respective screens when tapped.
A container that displays a logout button, which is also wrapped in a GestureDetector widget to handle tap events and call the exit(0) function when tapped.
Note that some of the widgets used in this code, such as TextWidget, Image, and Icon, are not part of the core Flutter library and may be custom widgets defined elsewhere in the codebase. Also, the AppColors class seems to define custom color constants used in the widget.




### MCQs screen controller

he code you provided is a Flutter application code that implements a multiple-choice quiz using a PageView widget. The main features of this code are:

The _MCQSControllerState class is a stateful widget that extends State and is used to maintain the state of the quiz screen.
The questions list contains the questions and their answers for the quiz.
The seconds variable represents the remaining time for each question in seconds, and it is displayed as a progress bar using a CircularProgressIndicator widget.
The score variable keeps track of the user's score in the quiz.
The PageView.builder widget is used to display the questions one by one in a paged manner.
Each question is displayed in a card-like layout with a question text and a list of answers as buttons.
When the user selects an answer, the onPressed callback is triggered, and the score is updated accordingly.
After answering all the questions, the storedResult method is called to navigate to the result screen with the user's score, total questions, and wrong answers.
The startTimer method uses a Timer object to update the seconds variable every second until it reaches zero, at which point the timer is canceled.
The dispose method cancels the timer when the widget is disposed to avoid memory leaks.
The initState method is used to start the timer when the widget is initialized.
The Random class is used to generate a random color for the background of the question card.
The AppColors class is used to define the colors used in the app.
The MCQSResultController class is presumably another widget that displays the result of the quiz.


### True False screen controller

The TrueFalseController class is a StatefulWidget in Flutter that represents a controller for a true/false quiz game. It contains a timer that counts down from a specified number of seconds, displays a question with multiple true/false options using a PageView, and calculates the user's score based on their selected answers.

Some key features of the TrueFalseController class are:

Timer: The class uses a Timer object to implement a countdown timer that starts when the widget is initialized and cancels when the widget is disposed. The timer updates the UI every second by calling setState() to trigger a rebuild of the widget.

PageView: The class uses a PageView widget to display a series of true/false questions. The PageController is used to control the scrolling behavior of the PageView and prevent the user from scrolling manually. The itemCount property of the PageView.builder specifies the number of questions to display, and the itemBuilder callback builds the UI for each question.

UI: The class uses various widgets to build the user interface, such as Scaffold, AppBar, Container, Text, MaterialButton, and CircularProgressIndicator. These widgets are used to display the questions, options, and timer, and to handle user interactions such as button presses.

State management: The class uses setState() to update the UI when the user selects an answer. The score variable keeps track of the user's score, and the isPressed variable is used to prevent multiple button presses. When the user answers a question, the setState() method is called to update the score variable and disable the buttons to prevent further input.

Navigation: When the timer runs out or when all questions are answered, the storedResult() method is called to navigate to a result screen (MCQSResultController) that displays the user's score, the total number of questions, and the number of incorrect answers. The Navigator.push() method is used to navigate to the result screen with the calculated values as arguments.

Random colors: The randomColors() method generates a random color with 70% opacity using the Color and Random classes. This method is used to set the background color of some UI elements, such as the timer progress indicator and the question container.

Lifecycle methods: The initState() method is called when the widget is first created and is used to start the timer. The dispose() method is called when the widget is removed from the tree and is used to cancel the timer to avoid memory leaks.



### Result screen controller

This is a Flutter widget named MCQSResultController that extends StatefulWidget. It represents a screen that displays the result of a multiple choice question quiz. The screen contains a Scaffold widget with a white background color and an app bar with a back button. The body of the screen is divided into three sections: a result summary, a correct answer count, and a wrong answer count.

The result summary section is displayed at the top of the screen and contains a container with a transparent color background, centered text with a title "Total Question" in uppercase, and the total length of the quiz displayed below the title. The text styles used for the title and total length are defined using a separate TextWidget widget.

The correct answer count section is displayed in the middle of the screen and contains a container with a black transparent color background, centered text with a title "Correct Answer", and the count of correct answers displayed below the title. The text styles used for the title and correct answer count are defined using a separate TextWidget widget.

The wrong answer count section is displayed below the correct answer count section and is similar in structure to the correct answer count section, but with a title "Wrong Answers" and the count of wrong answers displayed below the title.

At the bottom of the screen, there is a container with a black transparent color background, which contains a centered row with an icon of a mobile phone and text "Mobile Application Development" displayed next to the icon. The text style for this text is defined inline using the TextStyle widget.



## Models

### Class model for MCQs

<pre>
class QuestionModel {
  String? questionText;
  Map<String, bool>? answers;
  QuestionModel(this.questionText, this.answers);
}
</pre>

The QuestionModel class represents a model for a multiple-choice question in a quiz or test. It has two properties: questionText and answers.

questionText is a String? that represents the text of the question.
answers is a Map<String, bool>? that represents the possible answers for the question, where the keys are the answer options and the values are boolean values indicating whether the answer is correct (true) or incorrect (false).
The constructor of the QuestionModel class takes two parameters: questionText and answers, which are used to initialize the corresponding properties of the object. The questionText parameter is of type String? and represents the text of the question. The answers parameter is of type Map<String, bool>? and represents the possible answers for the question.




### MCQs Model list with mapping
<pre>
var questions = [
  QuestionModel(
    "What is Flutter?",
    {
      "Flutter is an open-source backend development framework": false,
      "Flutter is an open-source UI toolkit": true,
      "Flutter is an open-source programming language for cross-platform applications":
          false,
      "Flutters is a DBMS toolkit": false,
    },
  ),
  QuestionModel(
    "Who developed the Flutter Framework and continues to maintain it today?",
    {
      "Facebook": false,
      "Microsoft": false,
      "Google": true,
      "Oracle": false,
    },
  ),
  QuestionModel(
    "Which programming language is used to build Flutter applications?",
    {
      "Kotlin": false,
      "Dart": true,
      "Java": false,
      "Go": false,
    },
  ),
  QuestionModel(
    "How many types of widgets are there in Flutter?",
    {
      "2": true,
      "4": false,
      "6": false,
      "8+": false,
    },
  ),
  QuestionModel(
    "When building for iOS, Flutter is restricted to an __ compilation strategy",
    {
      "AOT (ahead-of-time)": true,
      "JIT (Just-in-time)": false,
      "Transcompilation": false,
      "Recompilation": false,
    },
  ),
  QuestionModel(
    "A sequence of asynchronous Flutter events is known as a:",
    {
      "Flow": false,
      "Current": false,
      "Stream": true,
      "Series": false,
    },
  ),
  QuestionModel(
    "Access to a cloud database through Flutter is available through which service?",
    {
      "SQLite": false,
      "Firebase Database": true,
      "NOSQL": false,
      "MYSQL": false,
    },
  ),
  QuestionModel(
    "What are some key advantages of Flutter over alternate frameworks?",
    {
      "Rapid cross-platform application development and debugging tools": false,
      "Future-proofed technologies and UI resources": false,
      "Strong supporting tools for application development and launch": false,
      " All of the above": true,
    },
  ),
  QuestionModel(
    "What element is used as an identifier for components when programming in Flutter?",
    {
      "Widgets": false,
      "Keys": true,
      "Elements": false,
      "Serial": false,
    },
  ),
  QuestionModel(
    "What type of Flutter animation allows you to represent real-world behavior?",
    {
      "Physics-based": true,
      "Maths-based": false,
      "Graph-based": false,
      "Sim-based": false,
    },
  ),
  QuestionModel(
    "What command would you use to compile your Flutter app in release mode?",
    {
      "Flutter --release": false,
      "Flutter build --release": false,
      "Flutter run --release": true,
      "Flutter run -release": false,
    },
  ),
  QuestionModel(
    "Which function will return the widgets attached to the screen as a root of the widget tree to be rendered on screen?",
    {
      "main()": false,
      "runApp()": true,
      "container()": false,
      "root()": false,
    },
  ),
  QuestionModel(
    "What is the key configuration file used when building a Flutter project?",
    {
      "pubspec.yaml": true,
      "pubspec.xml": false,
      "config.html": false,
      "root.xml": false,
    },
  ),
  QuestionModel(
    "Which component allows us to specify the distance between widgets on the screen?",
    {
      "SafeArea": false,
      "SizedBox": true,
      "table": false,
      "AppBar": false,
    },
  ),
  QuestionModel(
    "Which widget type allows you to modify its appearance dynamically according to user input?",
    {
      "Stateful widget": true,
      "Stateless widget": false,
    },
  ),
  QuestionModel(
    "What command would you run to verify your Flutter install and ensure your environment is set up correctly?",
    {
      "Flutter run": false,
      "Flutter build": false,
      "Flutter doctor": true,
      "Flutter help": false,
    },
  ),
  QuestionModel(
    "Which release mode will not contain any debugging data when run?",
    {
      "Profile": false,
      "Debug": false,
      "Release": true,
      "Test": false,
    },
  ),
  QuestionModel(
    "What language is Flutter's rendering engine primarily written in?",
    {
      "Kotlin": false,
      "C++": true,
      "Dart": false,
      "Java": false,
    },
  ),
  QuestionModel(
    "What is a drawback of Flutter that might lead you to choose another solution?",
    {
      "Non-native looking application UI": false,
      "Large application footprint": false,
      "A relatively unproven framework and language": false,
      "All of the above": true,
    },
  ),
  QuestionModel(
    "Flutter supports desktop application development.",
    {
      "True": true,
      "False": false,
    },
  ),
  QuestionModel(
    "What widget would you use for repeating content in Flutter?",
    {
      "ExpandedView": false,
      "ListView": true,
      "Stack": false,
      "ArrayView": false,
    },
  ),
  QuestionModel(
    "Flutter teams are inherently more difficult to manage because the framework is so new.",
    {
      "True": true,
      "False": false,
    },
  ),
];

</pre>

The code provided defines a list of questions using the QuestionModel class in a Flutter application. Each question has a statement and a map of possible answers with their corresponding boolean values indicating whether the answer is correct or not. The QuestionModel class likely has a constructor that takes a statement and a map of answers as parameters and sets their values as instance variables. The list questions contains instances of QuestionModel with different questions and their respective answers. These questions cover various topics related to Flutter, such as its definition, development, programming language, widgets, animations, release modes, rendering engine, drawbacks, and desktop application development support, among others.


### True - false Model list with mapping

<pre>
  import '../true_false/true_false_model.dart';

var trueFalseQuestions = [
  TrueFalseModel(
    "Flutter is an open-source UI toolkit_ ",
    {
      "False": false,
      "True": true,
    },
  ),
  TrueFalseModel(
    "Flutter is not a single codebase_",
    {
      "True": true,
      "False": false,
    },
  ),
  TrueFalseModel(
    "Flutter apps are built using the Dart programming language.",
    {
      "True": true,
      "False": false,
    },
  ),
  TrueFalseModel(
    "Flutter have two types of widgets:.",
    {
      "True": true,
      "False": false,
    },
  ),
  TrueFalseModel(
    "Flutter have two types of widgets:.",
    {
      "True": true,
      "False": false,
    },
  ),
  TrueFalseModel(
    " StatefulWidget: A widget that has mutable state.",
    {
      "True": true,
      "False": false,
    },
  ),
  TrueFalseModel(
    "StatelessWidget: A widget that does not require mutable state.",
    {
      "True": true,
      "False": false,
    },
  ),
  TrueFalseModel(
    "The Flutter tooling supports three modes when compiling your app, and a headless mode for testing.",
    {
      "True": true,
      "False": false,
    },
  ),
  TrueFalseModel(
    "The modes are not: - Debug - Profile - Release",
    {
      "True": true,
      "False": false,
    },
  ),
  TrueFalseModel(
    "AOT (Ahead Of Time) - compiled to fast, predictable, native code_",
    {
      "True": true,
      "False": false,
    },
  ),
  TrueFalseModel(
    "JIT (Just In Time) compiled for exceptionally fast development cycles and game-changing workflow_",
    {
      "True": true,
      "False": false,
    },
  ),
  TrueFalseModel(
    "They are inspired from components in React.",
    {
      "True": true,
      "False": false,
    },
  ),
];

</pre>

This code appears to define a list of TrueFalseModel objects, each representing a true or false question with associated answers. The questions and answers are stored as key-value pairs in a map, where the keys are the possible answers ("True" or "False") and the values are boolean values indicating whether the answer is correct or not.

The TrueFalseModel class is likely defined in the "../true_false/true_false_model.dart" file, which is imported at the beginning of the code snippet. This class likely contains properties to store the question string and the map of answers, as well as methods to access and manipulate these properties.

The trueFalseQuestions list contains several TrueFalseModel objects, each representing a different question about Flutter, a popular UI toolkit for building mobile and web applications using Dart programming language. The questions cover various topics related to Flutter, such as its open-source nature, codebase structure, widget types (StatefulWidget and StatelessWidget), Flutter tooling and compilation modes (Debug, Profile, Release, AOT, JIT), and its inspiration from React components.

It's worth noting that some of the statements in the questions may not be accurate or up-to-date, as the knowledge cutoff for this language model is September 2021 and Flutter is an actively evolving framework. Please refer to the official Flutter documentation for the most up-to-date and accurate information.





## Utilities


### Colors

<pre>
class AppColors {
  static Color color1 = const Color(0xffFDF4F5);
  static Color color2 = const Color(0xff4D455D);
  static Color color3 = const Color(0xffFF6E31);
  static Color color4 = const Color(0xff3A4F7A);
  static Color color5 = const Color(0xffE26868);
  static Color color6 = const Color(0xffFF731D);
  static Color color7 = const Color(0xffEDEDED);
  static Color color8 = const Color(0xff781C68);
  static Color bluePink = const Color(0xff372948);
  static Color bluePink2 = const Color(0xff251B37);
  static Color green = const Color(0xff006464);
  static Color green2 = const Color(0xff00c8b0);

  static Color white = const Color(0xffFFFFFF);
  static Color black = const Color(0xff000000);
  static Color blackTransparent = const Color(0xff181717);
  static Color blue = const Color.fromARGB(255, 65, 55, 245);
  static Color tranparent = const Color(0x004037F5);
}

</pre>

This code defines a class called AppColors that contains static Color objects representing various color values in Flutter.

The class AppColors has several static properties, each representing a specific color. These properties are named with descriptive names like color1, color2, color3, etc., indicating different color values. The color values are assigned using the Color constructor or the Color.fromARGB() method, which takes the RGBA values of the color as parameters.

The AppColors class includes colors for various purposes, such as background colors (color1, color2, color3, etc.), accent colors (color4, color5, color6, etc.), text colors (white, black, etc.), transparent colors (blackTransparent, tranparent, etc.), and other custom colors (bluePink, bluePink2, green, green2, etc.).

These color values can be used in Flutter UI code to apply consistent color schemes and styles throughout the application by referencing the static properties of the AppColors class. For example, AppColors.color1 can be used to set the background color of a widget to the color represented by color1, and so on.




## Widgets controller

### Text Widget()

<pre>
  // ignore: non_constant_identifier_names
Widget TextWidget(String? title, double? fSize, Color? fColor,
    FontWeight? fWeight, double? spacing, TextAlign? align) {
  return Text(
    title.toString(),
    textAlign: align,
    style: GoogleFonts.poppins(
      textStyle: TextStyle(
        color: fColor,
        fontSize: fSize,
        fontWeight: fWeight,
        letterSpacing: spacing,
      ),
    ),
  );
}

</pre>

This code defines a function called TextWidget that returns a Text widget in Flutter. The function takes several optional parameters:

title: A String representing the text content to be displayed in the Text widget.
fSize: A double representing the font size of the text.
fColor: A Color representing the font color of the text.
fWeight: A FontWeight representing the font weight of the text.
spacing: A double representing the letter spacing of the text.
align: A TextAlign representing the text alignment within the widget.
The Text widget is configured with the title parameter as its text content, and the textAlign, style, and other properties are set using the provided parameters.

The style property of the Text widget is set using the GoogleFonts.poppins method, which is a convenient way to apply the "Poppins" font family to the text. The textStyle property of the GoogleFonts.poppins method is configured with the provided parameters such as fColor, fSize, fWeight, and spacing to apply the desired style to the text.

Note: The comment // ignore: non_constant_identifier_names is a lint rule suppression comment that is used to ignore the violation of the naming convention for identifier names. In this case, the function name TextWidget does not follow the conventional camelCase naming convention, and the comment is used to suppress the lint warning. It's generally recommended to follow the naming conventions to write clean and readable code.


## Updated Code for True - False Controller
<pre>
  import 'dart:async';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../../../utilities/Colors/colors.dart';
import '../../Models/true_false_list/true_false_list.dart';
import '../../Views/Result/mcqs_result/mcqs_result.dart';

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
        builder: (context) => MCQSResultController(
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

</pre>


## Updated Code: MCQs Controller
<pre>
  import 'dart:async';
import 'dart:math';
import 'package:app/Areas/Models/Question_list/list.dart';
import 'package:app/utilities/Colors/colors.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../../Views/Result/mcqs_result/mcqs_result.dart';

class MCQSController extends StatefulWidget {
  const MCQSController({super.key});

  @override
  State<MCQSController> createState() => _MCQSControllerState();
}

class _MCQSControllerState extends State<MCQSController> {
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
    int totalQuestions = questions.length;
    int wrongAnswers = totalQuestions - correct;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MCQSResultController(
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
          if (questionIndex >= questions.length - 1) {
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
            itemCount: questions.length,
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
                                "${index + 1} / ${questions.length}",
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
                        questions[index].questionText!,
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
                  for (int i = 0; i < questions[index].answers!.length; i++)
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

                                if (questions[index]
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

                                  if (index >= questions.length - 1) {
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
                                  if (index >= questions.length - 1) {
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
                                    questions[index].answers!.keys.toList()[i],
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

</pre>


## Updated code: Result Controller
<pre>
  // import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../../../../utilities/Colors/colors.dart';
import '../../../Controllers/widgets/text_widget.dart';

class ResultController extends StatefulWidget {
  const ResultController({
    super.key,
    required this.result,
    required this.totalLength,
    required this.wrongAnswers,
  });
  final int result, totalLength, wrongAnswers;

  @override
  State<ResultController> createState() => _MCQSResultControllerState();
}

class _MCQSResultControllerState extends State<ResultController> {
  final audioPlayer = AudioCache();
  @override
  void initState() {
    audioPlayer.play('music/note3.wav');
    super.initState();
  }

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
              onTap: () {
                Navigator.of(context).pop();
              }),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
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
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.bluePink,
                border: Border.all(
                  color: AppColors.bluePink,
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

</pre>
