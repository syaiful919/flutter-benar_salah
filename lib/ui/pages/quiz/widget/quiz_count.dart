import 'package:flutter/material.dart';

class QuizCount extends StatelessWidget {
  const QuizCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: dummy data, update later
    const index = 0;
    const total = 5;
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 10),
      child: Text(
        "${index + 1} / $total",
        style: Theme.of(context)
            .textTheme
            .subtitle2!
            .copyWith(color: Colors.white),
      ),
    );
  }
}
