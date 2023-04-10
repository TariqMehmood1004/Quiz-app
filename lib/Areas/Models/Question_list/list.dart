import '../Questions/question_model.dart';

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
