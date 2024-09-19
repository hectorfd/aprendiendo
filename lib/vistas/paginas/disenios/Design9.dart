import 'package:flutter/material.dart';

class Design9 extends StatefulWidget {
  const Design9({super.key});

  @override
  _Design9State createState() => _Design9State();
}

class _Design9State extends State<Design9> {
  String _output = "0";

  void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        _output = "0";
      } else if (buttonText == "=") {
        _output = _calculateOutput();
      } else {
        if (_output == "0") {
          _output = buttonText;
        } else {
          _output += buttonText;
        }
      }
    });
  }

  String _calculateOutput() {
    // Implement your calculation logic here
    // For simplicity, this example just returns the current output
    return _output;
  }

  Widget buildButton(String buttonText, double buttonHeight, Color buttonColor) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () => _buttonPressed(buttonText),
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(24.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
          side: const BorderSide(
            color: Colors.black,
            width: 1.0,
          ),
          backgroundColor: buttonColor,
        ),
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
            child: Text(
              _output,
              style: const TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      buildButton("7", 1, Colors.white),
                      buildButton("8", 1, Colors.white),
                      buildButton("9", 1, Colors.white),
                      buildButton("/", 1, Colors.amber),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      buildButton("4", 1, Colors.white),
                      buildButton("5", 1, Colors.white),
                      buildButton("6", 1, Colors.white),
                      buildButton("x", 1, Colors.amber),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      buildButton("1", 1, Colors.white),
                      buildButton("2", 1, Colors.white),
                      buildButton("3", 1, Colors.white),
                      buildButton("-", 1, Colors.amber),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      buildButton(".", 1, Colors.white),
                      buildButton("0", 1, Colors.white),
                      buildButton("00", 1, Colors.white),
                      buildButton("+", 1, Colors.amber),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      buildButton("C", 1, Colors.red),
                      buildButton("=", 1, Colors.green),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Design9(),
    ));
