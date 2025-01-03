import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => selectHandler(),
        style: ButtonStyle(
          textStyle:
              // ignore: deprecated_member_use
              MaterialStateProperty.all(const TextStyle(color: Colors.white)),
          // ignore: deprecated_member_use
          backgroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Text(answerText),
      ),
    );
  }
}
