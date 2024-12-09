import 'package:quiz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    'How are Flutter UIs built?',
    [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android'
    ],
  ),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion(
    'What is the root widget of a Flutter app?',
    [
      'MaterialApp',
      'Scaffold',
      'AppBar',
      'Container',
    ],
  ),
  QuizQuestion(
    'What does the "build" method do in a widget?',
    [
      'Describes the UI structure of the widget',
      'Executes business logic',
      'Updates the state of the widget',
      'Handles user input',
    ],
  ),
  QuizQuestion(
    'Which Flutter widget is used to create a scrollable list?',
    [
      'ListView',
      'ScrollView',
      'GridView',
      'Column',
    ],
  ),
  QuizQuestion(
    'Which widget is used to detect user gestures?',
    [
      'GestureDetector',
      'UserListener',
      'TouchHandler',
      'InteractionListener',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the "pubspec.yaml" file?',
    [
      'To manage project dependencies',
      'To manage UI layout',
      'To store app configurations',
      'To compile Flutter apps',
    ],
  ),
  QuizQuestion(
    'What is the primary purpose of the Scaffold widget?',
    [
      'Provides a basic visual structure for Material apps',
      'Manages the state of widgets',
      'Handles network requests',
      'Optimizes app performance',
    ],
  ),
  QuizQuestion(
    'What is the use of the Container widget?',
    [
      'Adds padding, margins, or decoration to its child',
      'Displays a scrollable content',
      'Groups multiple widgets together',
      'Handles user input',
    ],
  ),
  QuizQuestion(
    'What is the difference between Column and Row widgets?',
    [
      'Column arranges widgets vertically, Row arranges them horizontally',
      'Row arranges widgets vertically, Column arranges them horizontally',
      'Both arrange widgets vertically',
      'Both arrange widgets horizontally',
    ],
  ),
  QuizQuestion(
    'What widget is used to create a button in Flutter?',
    [
      'ElevatedButton',
      'ClickableButton',
      'TouchButton',
      'InteractiveButton',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the main() function in Flutter?',
    [
      'Entry point for the application',
      'Handles app lifecycle events',
      'Defines the app’s widgets',
      'Manages the app’s routing',
    ],
  ),
  QuizQuestion(
    'How do you apply a gradient background to a widget?',
    [
      'Use the BoxDecoration with a gradient property',
      'Use the GradientWidget',
      'Apply a Color property to the widget',
      'Use the BackgroundGradient widget',
    ],
  ),
  QuizQuestion(
    'Which widget is used to display a single line of text?',
    [
      'Text',
      'Paragraph',
      'Label',
      'Line',
    ],
  ),
  QuizQuestion(
    'What is the purpose of SafeArea?',
    [
      'Avoids UI overlapping with system status bars and notches',
      'Makes the UI responsive',
      'Improves app performance',
      'Adds padding to widgets',
    ],
  ),
  QuizQuestion(
    'What is the difference between Navigator.push and Navigator.pop?',
    [
      'push navigates to a new screen, pop returns to the previous screen',
      'push returns to the previous screen, pop navigates to a new screen',
      'Both navigate to new screens',
      'Both return to previous screens',
    ],
  ),
  QuizQuestion(
    'Which widget is used to display an image?',
    [
      'Image',
      'Picture',
      'Photo',
      'Display',
    ],
  ),
  QuizQuestion(
    'How do you make a widget fill the available space?',
    [
      'Use the Expanded widget',
      'Use the Container widget',
      'Use the FullScreen widget',
      'Use the SizedBox widget',
    ],
  ),
  QuizQuestion(
    'What does the FutureBuilder widget do?',
    [
      'Builds a widget based on asynchronous operations',
      'Executes a future function',
      'Manages app lifecycle events',
      'Handles exceptions in the app',
    ],
  ),
  QuizQuestion(
    'Which widget allows you to stack widgets on top of each other?',
    [
      'Stack',
      'Overlay',
      'LayeredView',
      'IndexedStack',
    ],
  ),
  QuizQuestion(
    'What is a key in Flutter used for?',
    [
      'To maintain the state of widgets during widget tree rebuilds',
      'To secure the app’s sensitive data',
      'To define app routes',
      'To identify user gestures',
    ],
  ),
  QuizQuestion(
    'How do you define a margin for a widget?',
    [
      'Using EdgeInsets in the padding property',
      'Using MarginInsets in the decoration property',
      'Using SpacingInsets in the layout property',
      'Using EdgeInsets in the color property',
    ],
  ),
  QuizQuestion(
    'Which widget is best for aligning a child within its parent?',
    [
      'Align',
      'Positioned',
      'Container',
      'Padding',
    ],
  ),
  QuizQuestion(
    'What is hot reload in Flutter?',
    [
      'Reloads the code without losing the app state',
      'Restarts the app completely',
      'Stops and reruns the app',
      'Clears all states and rebuilds the app',
    ],
  ),
  QuizQuestion(
    'Which widget is used to arrange children widgets in a grid format?',
    [
      'GridView',
      'Row',
      'Column',
      'TableView',
    ],
  ),
  QuizQuestion(
    'What is the primary use of the Dart language in Flutter?',
    [
      'To write the code for Flutter apps',
      'To write the backend server',
      'To define app themes',
      'To build animations',
    ],
  ),
  QuizQuestion(
    'Which widget is used to implement tabs in a Flutter app?',
    [
      'TabBar',
      'TabView',
      'PageView',
      'Navigator',
    ],
  ),
  QuizQuestion(
    'What is the role of the AppBar widget?',
    [
      'Provides a toolbar with titles, actions, and navigation',
      'Handles app navigation',
      'Displays content in a list format',
      'Manages app settings',
    ],
  ),
  QuizQuestion(
    'What is a SnackBar in Flutter?',
    [
      'A temporary message displayed at the bottom of the screen',
      'A navigation drawer for side menus',
      'A widget to display images',
      'A type of button in Flutter',
    ],
  ),
  QuizQuestion(
    'How do you make a widget scrollable?',
    [
      'Wrap it with a SingleChildScrollView',
      'Wrap it with a ScrollView',
      'Add a Scrollable property to the widget',
      'Use the ScrollableContainer',
    ],
  ),
  QuizQuestion(
    'What is the purpose of ThemeData?',
    [
      'Defines the overall theme of an app',
      'Adds widgets to the widget tree',
      'Handles navigation between screens',
      'Defines the state of a widget',
    ],
  ),
  QuizQuestion(
    'What is the difference between runApp and build?',
    [
      'runApp initializes the app, build constructs the UI',
      'runApp constructs the UI, build initializes the app',
      'Both handle state updates',
      'Both handle asynchronous tasks',
    ],
  ),
];
