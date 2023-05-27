import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Quizbrain quizbrain = Quizbrain();

void main() {
  runApp(
    const MaterialApp(
      home: Quizzler(),
    ),
  );
}

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Quizpage(),
        ),
      ),
    );
  }
}

class Quizpage extends StatefulWidget {
  const Quizpage({super.key});

  @override
  State<Quizpage> createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
  List<Icon> scorekeeper = [];

  void checkanswer(bool userpickedanswer) {
    bool correctanswer = quizbrain.getcorrectanswer();
    setState(() {
      if (quizbrain.isfinished() == true) {
        Alert(
                context: context,
                title: 'Finished!',
                desc: 'You\'ve reached to the end of the quiz.')
            .show();
        quizbrain.reset();
        scorekeeper = [];
      } else {
        if (userpickedanswer == correctanswer) {
          scorekeeper.add(
            const Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          scorekeeper.add(
            const Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }

        quizbrain.nextquestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Text(
              quizbrain.getquestiontext(),
              // ignore: prefer_const_constructors
              style: TextStyle(color: Colors.white, fontSize: 25.0),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {
                // print('true button got pressed.');
                checkanswer(true);
              },
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              child: const Center(
                child: Text(
                  'True',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {
                // print('false button got pressed.');
                checkanswer(false);
              },
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child: const Text(
                'False',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: scorekeeper,
          ),
        ),
      ],
    );
  }
}
