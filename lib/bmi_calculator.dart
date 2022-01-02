import 'dart:math';

class BmiCalculator {
  BmiCalculator(this.height, this.weight);

  final int height;
  final int weight;

  double calculateBMI() {
    double bmi = weight / pow(height / 100, 2);

    return bmi;
  }

  String getResult() {
    var bmi = calculateBMI();
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    var bmi = calculateBMI();
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
