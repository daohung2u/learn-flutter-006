import 'package:flutter/material.dart';
import 'dart:math';

class BmiBrain {
  BmiBrain({@required this.weight, @required this.height});

  final int weight;
  final int height;

  double _bmi;

  void _cal() {
    _bmi = weight / pow(height / 100, 2);
  }

  String getBmi() {
    _cal();
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    _cal();
    if (_bmi > 25.0) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
