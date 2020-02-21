import 'dart:math';


class BmiCalculator {
  final int height; // kgs
  final int weight; //cms
  double _bmi;

  BmiCalculator(this.height, this.weight);

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }
  
  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You Have a Higher than Normal Body Weight, Try To workout Regularly !';
    } else if (_bmi > 18.5) {
      return 'You have a Normal Body Weight. Good Job!';
    } else {
      return 'Sorry You Are Too Skinny  !! You Should Eat More ! LOL ';
    }
  }
}