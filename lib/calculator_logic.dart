import 'dart:math';

class CalculatorLogic{
  final int height;
  final int weight;
  double _bmi;
  CalculatorLogic(this.height, this.weight);

  String calculateBmi(){
    _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
    return "Overweight";
    }else if(_bmi >= 18){
      return "Normal";
    }else{
      return "Under Weight";
    }
  }

  String getDescription(){
    if(_bmi >= 25){
      return "You above the recommended weight, please have a look at nutrition and exercise";
    }else if(_bmi >= 18){
      return "You are correct for you weight and height";
    }else{
      return "You are less than what you need to be please eat more";
    }
  }




}