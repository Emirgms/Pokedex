// ignore_for_file: unnecessary_import, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Constants {
  Constants._();

  static const String appTitle = 'Pokedex';
  static TextStyle appTitleStyle() {
    return TextStyle(
      fontSize: 48,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle appPokemonNameTitleStyle() {
    return TextStyle(
      fontSize: 24,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle getPokeInfoLabelTextStyle() {
    return TextStyle(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle getPokeInfoTextStyle() {
    return TextStyle(
      fontSize: 16,
      color: Colors.black,
    );
  }

  static TextStyle appTypeChipTextStyle() {
    return TextStyle(
      fontSize: 20,
      color: Colors.white,
    );
  }
}
