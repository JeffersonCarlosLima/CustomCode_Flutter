// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class Yearpicker extends StatefulWidget {
  const Yearpicker({super.key, this.width, this.height});

  final double? width;
  final double? height;

  @override
  State<Yearpicker> createState() => _YearpickerState();
}

class _YearpickerState extends State<Yearpicker> {
  DateTime _selectedYear = DateTime.now();
  //grava o ano atual na variavel assim que inicia o component
  @override
  void initState() {
    super.initState();
    FFAppState().showYear = "${DateTime.now().year}";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      //decoration: BoxDecoration(
      // border: Border.all(color: Color(0xFF57636C), width: 2),
      // borderRadius: BorderRadius.circular(10),
      //  ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Selecione um Ano",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 300,
            height: 300,
            child: YearPicker(
              //firstDate: DateTime(DateTime.now().year - 10, 1),
              //adicionado
              firstDate: DateTime(2000, 1),
              lastDate: DateTime.now(),
              initialDate: DateTime.now(),
              selectedDate: _selectedYear,
              onChanged: (DateTime dateTime) {
                // print(dateTime.year);
                setState(() {
                  _selectedYear = dateTime;
                  FFAppState().showYear = "${dateTime.year}";
                });
                //Navigator.pop(context);
              },
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Ano Selecionado: ${FFAppState().showYear}",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}