import 'package:flutter/material.dart';


class MyText extends StatelessWidget {
  const MyText({super.key, required this.text1, required this.text2});

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Color.fromARGB(255, 89, 97, 247),
              width: 2,
            ),
          ),
          child: Column(
            children: <Widget>[
              Text(
                text1,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
              Text(
                text2,
                style: const TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
