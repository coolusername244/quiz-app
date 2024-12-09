// Here we are defining the structure for the list of questions located in 'questions.dart'
class QuizQuestion {
  // Below is the structure of a quiz question
  const QuizQuestion(this.question, this.answers);

  final String question;
  final List<String> answers;

  // And here is a class method for returning the list of questions in a shuffled order
  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
