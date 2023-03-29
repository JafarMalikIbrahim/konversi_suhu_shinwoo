import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required this.result,
  }) : super(key: key);

  final double result;
  @override
  Widget build(BuildContext context) {
      return Container(
      child: Column(
        children: <Widget>[
          const Text("Hasil",style: TextStyle(fontSize: 20),),
          Text(
      result.toStringAsFixed(1),
      style: const TextStyle(fontSize: 30),
      ),
      ],
      ),
    );
      // );
  }
}
