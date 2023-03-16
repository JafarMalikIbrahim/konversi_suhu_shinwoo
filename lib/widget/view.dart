import 'package:flutter/material.dart';
import 'package:konversi_suhu/widget/convert.dart';
import 'package:konversi_suhu/widget/input.dart';
import '../main.dart';
import 'mytext.dart';

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;

  final etInput = TextEditingController();

  get key => null;

  @override
  void dispose() {
    etInput.dispose();
    super.dispose();
  }

  void konversiSuhu() {
    setState(() {
      _inputUser = double.parse(etInput.text);
      _reamur = (_inputUser - 273.15) * 0.8;
      _kelvin = 273.15 + _inputUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          Input(etInput: etInput),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MyText(
                    text1: 'Suhu dalam Kelvin',
                    text2: _kelvin.toStringAsFixed(2)),
                MyText(
                    text1: 'Suhu dalam Reamor',
                    text2: _reamur.toStringAsFixed(2)),
              ],
            ),
          ),
          Convert(konvertHandler: konversiSuhu),
        ],
      ),
    );
  }
}
