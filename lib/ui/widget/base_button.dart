import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.textColor = Colors.white,
    this.color = Colors.blue,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  final Color textColor;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      textColor: textColor,
      elevation: 10,
      minWidth: 200,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Text(text),
      onPressed: onPressed,
    );
  }
}
