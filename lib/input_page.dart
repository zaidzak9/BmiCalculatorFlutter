import 'package:bmi_calculator_flutter/reusableUi/box_container.dart';
import 'package:bmi_calculator_flutter/util/BmiEnum.dart';
import 'package:flutter/material.dart';

const activeColor = Color(0xFF1D111);
const inactiveColor = Color(0xFF1D1E33);

enum ButtonType{
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color femaleColor = inactiveColor;
  Color maleColor = inactiveColor;
  var gender;
  BmiEnum bmiEnum = new BmiEnum();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      gender = ButtonType.male;
                    });
                  },
                  child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color:  gender == ButtonType.male ? maleColor = activeColor :maleColor = inactiveColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: BoxContainer("male")),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      gender = ButtonType.female;
                    });
                  },
                  child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color:  gender == ButtonType.female ? femaleColor = activeColor : femaleColor = inactiveColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: BoxContainer("female")),
                ))
              ],
            )),
            Expanded(
              child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: BoxContainer("progress")),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Color(0xFF1D1E33),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: BoxContainer("weight")),
                ),
                Expanded(
                  child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Color(0xFF1D1E33),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: BoxContainer("height")),
                )
              ],
            )),
            Container(
              color: Colors.pink,
              margin: EdgeInsets.only(top: 15.0),
              width: double.infinity,
              height: 100.0,
            )
          ],
        ));
  }
}
