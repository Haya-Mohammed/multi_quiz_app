import 'dart:async';

import 'package:flutter/material.dart';
import 'package:multi_quiz_app/constants.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../modules/true_false/quizBrain.dart';

class TFPage extends StatefulWidget {
  const TFPage({Key? key}) : super(key: key);

  @override
  State<TFPage> createState() => _TFPageState();
}

class _TFPageState extends State<TFPage> {
  QuizBrain quizBrain = QuizBrain();
  int score = 0;
  int counter = 10;
  checkAnswer(bool userAnswer) {
    bool correctAnswer = quizBrain.getQuestionAnswer();
    if (correctAnswer == userAnswer) {
      score++;
    }
    if (quizBrain.isFinished()) {
      Timer(const Duration(seconds: 1), () {
        Alert(
          context: context,
          title: 'Finished',
          desc: 'You\'re done',
        ).show();
        setState(() {
          quizBrain.reset();
          score = 0;
        });
      });
    } else {
      setState(() {
        counter = 10;
        quizBrain.nextQuestion();
      });
    }
  }

  @override
  void initState() {
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {
          counter--;
        });
        if (counter == 0) {
          counter = 10;
          quizBrain.nextQuestion();
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [kL1, kL12],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/', (route) => false);
                      },
                      style: const ButtonStyle(
                        shape: MaterialStatePropertyAll(CircleBorder()),
                        side: MaterialStatePropertyAll(
                          BorderSide(color: Colors.white, width: 0.5),
                        ),
                        padding:
                            MaterialStatePropertyAll(EdgeInsets.only(right: 2)),
                      ),
                      child: const Icon(Icons.close,
                          color: Colors.white, size: 20),
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: 44,
                        width: 44,
                        child: CircularProgressIndicator(
                          value: counter / 10,
                          color: Colors.white,
                          backgroundColor: Colors.white12,
                        ),
                      ),
                      Text(
                        counter.toString(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SF-Pro-Text'),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 70,
                    height: 35,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.white, width: 0.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: EdgeInsets.all(15),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.favorite, color: Colors.white, size: 20),
                          SizedBox(width: 10),
                          Text('3', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                flex: 8,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      quizBrain.getQuestionText(),
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      checkAnswer(true);
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.green),
                      //   shape: MaterialStateProperty.all(),
                    ),
                    child: const Text(
                      'True',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      checkAnswer(false);
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red),
                      //   shape: MaterialStateProperty.all(),
                    ),
                    child: const Text(
                      'False',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
