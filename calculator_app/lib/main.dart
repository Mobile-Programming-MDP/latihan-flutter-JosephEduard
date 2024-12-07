import 'package:flutter/material.dart';
import 'buttons.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String userInput = '';
  String answer = '0';

  // Array of buttons
  final List<String> buttons = [
    'C',
    '+/-',
    '%',
    'DEL',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.grey[900],
      body: Column(
        children: <Widget>[
          // Display area
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child: Text(
                      userInput,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    alignment: Alignment.centerRight,
                    child: Text(
                      answer,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Buttons Grid
          Expanded(
            flex: 3,
            child: Container(
              child: GridView.builder(
                itemCount: buttons.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemBuilder: (BuildContext context, int index) {
                  // Clear Button
                  if (index == 0) {
                    return MyButton(
                      buttontapped: () {
                        setState(() {
                          userInput = '';
                          answer = '0';
                        });
                      },
                      buttonText: buttons[index],
                      color: Colors.red[400]!,
                      textColor: Colors.white,
                    );
                  }

                  // +/- Button
                  else if (index == 1) {
                    return MyButton(
                      buttontapped: () {
                        setState(() {
                          if (userInput.isNotEmpty) {
                            if (userInput.startsWith('-')) {
                              userInput = userInput.substring(1);
                            } else {
                              userInput = '-' + userInput;
                            }
                          }
                        });
                      },
                      buttonText: buttons[index],
                      color: Colors.blue[50]!,
                      textColor: Colors.black,
                    );
                  }

                  // % Button
                  else if (index == 2) {
                    return MyButton(
                      buttontapped: () {
                        setState(() {
                          if (userInput.isNotEmpty) {
                            double value = double.tryParse(userInput) ?? 0.0;
                            userInput = (value / 100).toString();
                          }
                        });
                      },
                      buttonText: buttons[index],
                      color: Colors.blue[50]!,
                      textColor: Colors.black,
                    );
                  }

                  // Delete Button
                  else if (index == 3) {
                    return MyButton(
                      buttontapped: () {
                        setState(() {
                          if (userInput.isNotEmpty) {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                          }
                        });
                      },
                      buttonText: buttons[index],
                      color: Colors.orange[400]!,
                      textColor: Colors.white,
                    );
                  }

                  // Equal Button
                  else if (index == 18) {
                    return MyButton(
                      buttontapped: () {
                        setState(() {
                          equalPressed();
                        });
                      },
                      buttonText: buttons[index],
                      color: Colors.green[700]!,
                      textColor: Colors.white,
                    );
                  }

                  // Other Buttons
                  else {
                    return MyButton(
                      buttontapped: () {
                        setState(() {
                          userInput += buttons[index];
                        });
                      },
                      buttonText: buttons[index],
                      color: isOperator(buttons[index])
                          ? Colors.blueAccent
                          : Colors.white,
                      textColor: isOperator(buttons[index])
                          ? Colors.white
                          : Colors.black,
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool isOperator(String x) {
    return (x == '/' || x == 'x' || x == '-' || x == '+');
  }

  // Function to calculate the input operation
  void equalPressed() {
    try {
      String finalUserInput = userInput.replaceAll('x', '*');
      Parser p = Parser();
      Expression exp = p.parse(finalUserInput);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      answer = eval.toString();
    } catch (e) {
      answer = "Error";
    }
  }
}
