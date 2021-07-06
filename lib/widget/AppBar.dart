import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 22),
      children: <TextSpan>[
        TextSpan(
          text: 'Quiz',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        ),
        TextSpan(
          text: 'Maker',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.lightBlue,
          ),
        ),
      ],
    ),
  );
}
