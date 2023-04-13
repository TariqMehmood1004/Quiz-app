# Notio Quizzee App

### This project is using the MVC software architecture pattern.

# Views

## Main.dart file

The given code appears to be a Flutter application written in Dart programming language. Let me provide a brief overview of what this code does:

The main() function sets the system UI overlay style using SystemChrome.setSystemUIOverlayStyle(), which makes the status bar transparent. SystemUiOverlayStyle is a class in Flutter that allows you to customize the appearance of the system overlays, such as the status bar and the navigation bar.

The main() function then calls the runApp() function, which starts the Flutter application and passes an instance of MyApp as the root widget of the application.

MyApp is a stateless widget that serves as the entry point of the application. It contains a MaterialApp widget, which is a container for a Flutter Material Design application. The debugShowCheckedModeBanner property is set to false, which hides the "debug" banner on the top right corner of the screen in debug mode.

The home property of MaterialApp is set to a Scaffold widget, which provides a basic structure for a Material Design app. The body of the Scaffold contains a Stack widget that stacks two children widgets on top of each other: DrawerControllerScreen() and DashboardControllerScreen().

DrawerControllerScreen and DashboardControllerScreen are assumed to be custom widget classes representing the UI for a drawer and a dashboard screen respectively.

Note: It is worth mentioning that the code snippet provided is incomplete and might not be able to run standalone. It might require additional imports and implementation of DrawerControllerScreen and DashboardControllerScreen widgets.


## Dashboard screen controller

The code provided appears to be part of a Flutter application in Dart programming language. It represents the stateful widget _DashboardControllerScreenState, which is responsible for building the UI for the dashboard screen in the application. Let me provide a brief overview of what this code does:

The _DashboardControllerScreenState class has several instance variables such as xOffset, yOffset, scaleFactor, angle, and isDrawerOpen that are used to control the animation and appearance of the dashboard screen.

The drawer() method is a custom method that sets the values of the instance variables to control the position, scale, rotation, and visibility of the dashboard screen. This method is called when the drawer is opened or closed.

The build() method is responsible for building the UI of the dashboard screen. It returns an AnimatedContainer widget that animates its transformation properties based on the values of the instance variables.

The dashboard screen UI consists of several child widgets, including a container for the app bar at the top, a column for the course contents, and a commented-out PageViewForQuestions widget. The app bar contains an icon that toggles between a menu icon and a back icon based on the value of isDrawerOpen variable. It also displays a circle avatar with a background image.

The TextWidget is a custom widget used to display text with customizable font size, color, weight, and alignment.

The FlutterCourseContentsController is assumed to be a custom widget class representing the UI for the course contents in the dashboard screen.

Note: It is worth mentioning that the code snippet provided is incomplete and might not be able to run standalone. It might require additional imports and implementation of custom widgets referenced in the code.




## Custom drawer screen controller

The given code appears to be a Flutter widget called DrawerControllerScreen that extends StatefulWidget and contains a build method for constructing the user interface.

The DrawerControllerScreen widget has the following structure:

A Container widget that serves as the background of the screen. It has a decoration property that specifies the background color (AppColors.color1) and border radius (BorderRadius.circular(0.0)).
A SafeArea widget that contains the main content of the screen. It has a child property that contains a Column widget.
Inside the Column widget, there are three main sections:
A container that displays user profile information, such as the user's name and avatar.
A container that displays options for different question types, such as multiple-choice questions (MCQs) and true/false questions. These options are wrapped in GestureDetector widgets to handle tap events and navigate to the respective screens when tapped.
A container that displays a logout button, which is also wrapped in a GestureDetector widget to handle tap events and call the exit(0) function when tapped.
Note that some of the widgets used in this code, such as TextWidget, Image, and Icon, are not part of the core Flutter library and may be custom widgets defined elsewhere in the codebase. Also, the AppColors class seems to define custom color constants used in the widget.




## MCQs screen controller

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


## True False screen controller

The TrueFalseController class is a StatefulWidget in Flutter that represents a controller for a true/false quiz game. It contains a timer that counts down from a specified number of seconds, displays a question with multiple true/false options using a PageView, and calculates the user's score based on their selected answers.

Some key features of the TrueFalseController class are:

Timer: The class uses a Timer object to implement a countdown timer that starts when the widget is initialized and cancels when the widget is disposed. The timer updates the UI every second by calling setState() to trigger a rebuild of the widget.

PageView: The class uses a PageView widget to display a series of true/false questions. The PageController is used to control the scrolling behavior of the PageView and prevent the user from scrolling manually. The itemCount property of the PageView.builder specifies the number of questions to display, and the itemBuilder callback builds the UI for each question.

UI: The class uses various widgets to build the user interface, such as Scaffold, AppBar, Container, Text, MaterialButton, and CircularProgressIndicator. These widgets are used to display the questions, options, and timer, and to handle user interactions such as button presses.

State management: The class uses setState() to update the UI when the user selects an answer. The score variable keeps track of the user's score, and the isPressed variable is used to prevent multiple button presses. When the user answers a question, the setState() method is called to update the score variable and disable the buttons to prevent further input.

Navigation: When the timer runs out or when all questions are answered, the storedResult() method is called to navigate to a result screen (MCQSResultController) that displays the user's score, the total number of questions, and the number of incorrect answers. The Navigator.push() method is used to navigate to the result screen with the calculated values as arguments.

Random colors: The randomColors() method generates a random color with 70% opacity using the Color and Random classes. This method is used to set the background color of some UI elements, such as the timer progress indicator and the question container.

Lifecycle methods: The initState() method is called when the widget is first created and is used to start the timer. The dispose() method is called when the widget is removed from the tree and is used to cancel the timer to avoid memory leaks.



## Result screen controller

This is a Flutter widget named MCQSResultController that extends StatefulWidget. It represents a screen that displays the result of a multiple choice question quiz. The screen contains a Scaffold widget with a white background color and an app bar with a back button. The body of the screen is divided into three sections: a result summary, a correct answer count, and a wrong answer count.

The result summary section is displayed at the top of the screen and contains a container with a transparent color background, centered text with a title "Total Question" in uppercase, and the total length of the quiz displayed below the title. The text styles used for the title and total length are defined using a separate TextWidget widget.

The correct answer count section is displayed in the middle of the screen and contains a container with a black transparent color background, centered text with a title "Correct Answer", and the count of correct answers displayed below the title. The text styles used for the title and correct answer count are defined using a separate TextWidget widget.

The wrong answer count section is displayed below the correct answer count section and is similar in structure to the correct answer count section, but with a title "Wrong Answers" and the count of wrong answers displayed below the title.

At the bottom of the screen, there is a container with a black transparent color background, which contains a centered row with an icon of a mobile phone and text "Mobile Application Development" displayed next to the icon. The text style for this text is defined inline using the TextStyle widget.



# Models


## ds


## dsf



## sdf


## ds


## dsf



## sdf




## dsf



## sdf


## ds


## dsf



## sdf


## ds


## dsf



## sdf


## ds


## dsf



## sdf
