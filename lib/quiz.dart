import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screens/home_screen.dart';
import 'package:quiz_app/screens/questions_screens.dart';
import 'package:quiz_app/screens/results_screen.dart';

/*
Quiz is a stateful widget. Stateful widgets consist of 2 classes.
1 - The widget
  The widget is main comprised of the parameters (super.key and other params that could be passed)
  and then returns the created state
2 - The state
*/

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // here we are defining the selected answers array
  // its type is a List of Strings
  List<String> selectedAnswers = [];

  // Initializing the active screen to be the start screen on initial load
  // note: 'start-screen' is not used once we leave the start screen
  var activeScreen = 'start-screen';

  // this function is passed to the 'Start Quiz' button
  // it is changing the state of activeScreen to 'questions-screen'
  // When setState is called, it will rebuild the app, exactly the same as React
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  // This function is passing the tapped answer to the selectedAnswers list
  // and also switching the active screen to 'results-screen' once the user
  // has answered all of the questions.
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  // Here we are resetting selectedAnswers back to an empty list
  // and taking the user back to the 'questions-screen'
  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  // Here we are building what the user will see on the screen ('start-screen')
  @override
  // 'Widget' is the return type of build
  Widget build(context) {
    // 'Widget' is the return type of HomeScreen
    // and because the initial screen is 'start-screen', we are displaying
    // the HomeScreen widget as a default
    Widget screenWidget = HomeScreen(switchScreen);

    // and here we are listening to see if 'activeScreen' is something else.
    // If it is, we are changing the displayed screen
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        // here we are passing down the function that adds a tapped answer
        // to the selectedAnswers List
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    // The MaterialApp displayed below, holds the styles for all of the pages
    // meaning that each of the different screens will have the LinearGradient.
    // You will also be able to set other style factors here such as default
    // text color for the whole app
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 26, 2, 80),
                Color.fromARGB(255, 158, 33, 146),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
