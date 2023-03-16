import 'package:flutter/material.dart';
import 'package:konversi_suhu/widget/view.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Konverter Suhu ShinWoo"),
            ),
            body: View(key: key)));
  }
}