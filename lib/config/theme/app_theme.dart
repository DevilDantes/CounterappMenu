import 'package:flutter/material.dart';

const Color _customcolor = Color(0xFF0B4FE4);

const List<Color> _colorthemes =[
_customcolor,
Colors.teal,
Colors.yellow,
Colors.red,
Colors.orange,
Colors.pinkAccent
];


class AppTheme {

  final int selectedColor;

  AppTheme({required this.selectedColor})
    :assert(selectedColor >=0 && selectedColor < _colorthemes.length, 'El valor debe estar entre 0 y ${_colorthemes.length -1}');


  ThemeData theme(){
    return ThemeData(
      brightness: Brightness.dark,
      colorSchemeSeed: _colorthemes[selectedColor]
    );
  }
}