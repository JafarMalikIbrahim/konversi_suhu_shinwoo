import 'package:flutter/material.dart';
import 'package:konversi_suhu/widget/convert.dart';
import 'package:konversi_suhu/widget/input.dart';
import 'package:konversi_suhu/widget/result.dart';
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
  String _newValue = "Kelvin";
  double _result= 0;

  List<String> listViewItem = <String>[];
  var listItem = ["Kelvin", "Reamur"];

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
        if (_newValue == "Kelvin")
        _result = _inputUser + 273;
        else
        _result = (4 / 5) * _inputUser;
        });
        listViewItem.add(_result.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          Input(etInput: etInput),
          DropdownButton<String>(
              items: listItem.map(myDropDownMenuItem).toList(),
              value: _newValue,
              onChanged: onChangeDropDown),
              Result(result: _result),
          // Expanded(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //     children: <Widget>[
          //       MyText(
          //           text1: 'Suhu dalam Kelvin',
          //           text2: _kelvin.toStringAsFixed(2)),
          //       MyText(
          //           text1: 'Suhu dalam Reamor',
          //           text2: _reamur.toStringAsFixed(2)),
          //     ],
          //   ),
          // ),
          Convert(konvertHandler: konversiSuhu),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            child: const Text("Riwayat Konversi",
            style: TextStyle(fontSize: 20),
            ),
            ),
            Expanded(
            child: ListView(
              children: listViewItem.map((String value) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  child: Text(
                  value,
                  style: const TextStyle(fontSize: 15),
                ));
              }).toList()
            ),
          ),
        ],
      ),
    );
  }
  void onChangeDropDown(String? changeValue) {
    setState(() {
      _newValue = changeValue!;
      konversiSuhu();
    });
  }

  DropdownMenuItem<String> myDropDownMenuItem(String value) {
    return DropdownMenuItem<String>(value: value, child: Text(value));
  }
}
