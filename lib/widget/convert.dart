import 'package:flutter/material.dart';

class Convert extends StatelessWidget {
  final Function konvertHandler;

  const Convert({
    Key? key,
    required this.konvertHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 230),
        width: 400,
        child: TextButton(
            onPressed: () {
              konvertHandler();
            },
            style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
            child: const Text(
              "Konversi Suhu",
              style: TextStyle(
                color: Colors.white,
              ),
            ))
    );
  }
}