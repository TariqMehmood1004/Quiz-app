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
    "What is Flutter?",
    {
      "Flutter is an open-source backend development framework": false,
      "Flutter is an open-source UI toolkit": true,
      "Flutter is an open-source programming language for cross-platform applications":
          false,
      "Flutters is a DBMS toolkit": false,
    },
  ),
];

class QuestionModel {
  String? questionText;
  Map<String, bool>? answers;
  QuestionModel(this.questionText, this.answers);
}
