import 'package:flutter/material.dart';

// Creating Stateless Widget for buttons
class MyButton extends StatelessWidget {
  // Declaring variables
  final Color color;
  final Color textColor;
  final String buttonText;
  final VoidCallback? buttontapped;

  // Constructor
  MyButton({
    required this.color,
    required this.textColor,
    required this.buttonText,
    this.buttontapped,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: Padding(
        padding: const EdgeInsets.all(0.2),
        child: ClipRRect(
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}