import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF7330DE);

const List<Color> _colorThemes = [
  _customColor,
  Colors.lightBlue,
  Colors.teal,
  Colors.cyanAccent,
  Colors.pink,
  Colors.greenAccent,
  Colors.indigoAccent,
  Colors.redAccent,
  Colors.lightGreen,
  Colors.orange,
  Colors.yellow,
  Colors.grey,
  Colors.limeAccent, 
  Colors.green
];
class AppTheme {

  final int selectedColor;

  AppTheme({ this.selectedColor = 0 }):
  assert( selectedColor >= 0, 'index must be than > 0'),
   assert( selectedColor <= _colorThemes.length - 1,  
    'index not found' ) ;

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.dark, // Modo Oscuro
    );
  }
}