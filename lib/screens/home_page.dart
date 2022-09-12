import 'package:flutter/material.dart';
import 'package:calculator/components/button.dart';
import 'package:math_expressions/math_expressions.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // bool iconStatus = false;
  //
  // ThemeData _dark =
  //     ThemeData(brightness: Brightness.dark, textTheme: TextTheme());
  //
  // ThemeData _light = ThemeData(
  //   brightness: Brightness.light,
  // );

  String userInput = '';
  String result = '';

  String equalPressed() {
    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll('X', '*');
    Parser p = Parser();
    Expression exp = p.parse(finalUserInput);
    ContextModel cm = ContextModel();

    double evaluation = exp.evaluate(EvaluationType.REAL, cm);

    String result = evaluation.toString();
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Calculator',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          // actions: [
          //   IconButton(
          //       onPressed: () {
          //         setState(() {
          //           iconStatus = !iconStatus;
          //         });
          //       },
          //       icon: Icon(iconStatus ? Icons.wb_sunny : Icons.nights_stay))
          // ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 45),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          userInput,
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Text(
                          result,
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Button(
                    text: 'AC',
                    color: Colors.lightBlue,
                    onpress: () {
                      setState(() {
                        userInput = '';
                        result = '';
                      });
                    },
                  ),
                  Button(
                    text: '+/-',
                    color: Colors.lightBlue,
                    onpress: () {
                      setState(() {
                        userInput = '+/-';
                      });
                    },
                  ),
                  Button(
                    text: '%',
                    color: Colors.lightBlue,
                    onpress: () {
                      setState(() {
                        userInput += '%';
                      });
                    },
                  ),
                  Button(
                    text: '/',
                    color: Colors.lightBlue,
                    onpress: () {
                      setState(() {
                        userInput += '/';
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Button(
                    text: '7',
                    color: Colors.lightBlue.shade300,
                    onpress: () {
                      setState(() {
                        userInput += '7';
                      });
                    },
                  ),
                  Button(
                    text: '8',
                    color: Colors.lightBlue.shade300,
                    onpress: () {
                      setState(() {
                        userInput += '8';
                      });
                    },
                  ),
                  Button(
                    text: '9',
                    color: Colors.lightBlue.shade300,
                    onpress: () {
                      setState(() {
                        userInput += '9';
                      });
                    },
                  ),
                  Button(
                    text: 'X',
                    color: Colors.lightBlue,
                    onpress: () {
                      setState(() {
                        userInput += 'X';
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Button(
                    text: '4',
                    color: Colors.lightBlue.shade300,
                    onpress: () {
                      setState(() {
                        userInput += '4';
                      });
                    },
                  ),
                  Button(
                    text: '5',
                    color: Colors.lightBlue.shade300,
                    onpress: () {
                      setState(() {
                        userInput += '5';
                      });
                    },
                  ),
                  Button(
                    text: '6',
                    color: Colors.lightBlue.shade300,
                    onpress: () {
                      setState(() {
                        userInput += '6';
                      });
                    },
                  ),
                  Button(
                    text: '-',
                    color: Colors.lightBlue,
                    onpress: () {
                      setState(() {
                        userInput += '-';
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Button(
                    text: '1',
                    color: Colors.lightBlue.shade300,
                    onpress: () {
                      setState(() {
                        userInput += '1';
                      });
                    },
                  ),
                  Button(
                    text: '2',
                    color: Colors.lightBlue.shade300,
                    onpress: () {
                      setState(() {
                        userInput += '2';
                      });
                    },
                  ),
                  Button(
                    text: '3',
                    color: Colors.lightBlue.shade300,
                    onpress: () {
                      setState(() {
                        userInput += '3';
                      });
                    },
                  ),
                  Button(
                    text: '+',
                    color: Colors.lightBlue,
                    onpress: () {
                      setState(() {
                        userInput += '+';
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Button(
                    text: '0',
                    color: Colors.lightBlue.shade300,
                    onpress: () {
                      setState(() {
                        userInput += '0';
                      });
                    },
                  ),
                  Button(
                    text: '.',
                    color: Colors.lightBlue.shade300,
                    onpress: () {
                      setState(() {
                        userInput += '.';
                      });
                    },
                  ),
                  Button(
                    text: 'DEL',
                    color: Colors.lightBlue.shade300,
                    onpress: () {
                      setState(() {
                        userInput =
                            userInput.substring(0, userInput.length - 1);
                      });
                    },
                  ),
                  Button(
                    text: '=',
                    color: Colors.lightBlue,
                    onpress: () {
                      setState(() {
                        result = equalPressed();
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
