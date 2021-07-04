import 'package:bmi_calculator_flutter/result_page.dart';
import 'package:bmi_calculator_flutter/reusableUi/box_container.dart';
import 'package:flutter/material.dart';
import 'reusableUi/util/constants.dart';

enum ButtonType{
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color femaleColor = kInactiveColor;
  Color maleColor = kInactiveColor;
  var gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(kToolbarName),
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
                        color:  gender == ButtonType.male ? maleColor = kActiveColor :maleColor = kInactiveColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: BoxContainer(kMale)),
                )
                ),
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
                        color:  gender == ButtonType.female ? femaleColor = kActiveColor : femaleColor = kInactiveColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: BoxContainer(kFemale)),
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
                  child: BoxContainer(kHeight)),
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
                      child: BoxContainer(kWeight)),
                ),
                Expanded(
                  child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Color(0xFF1D1E33),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: BoxContainer(kAge)),
                )
              ],
            )),GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>ResultPage()));
              },
              child: Container(
                  alignment: Alignment.center,
                  color: Colors.pink,
                  margin: EdgeInsets.only(top: 15.0),
                  width: double.infinity,
                  height: 100.0,
                  child: Text("Calculate BMI",style: TextStyle(fontSize: 40.0,
                      fontWeight: FontWeight.w700,
                      color:Colors.white),),
                ),
            ),
          ],
        ));
  }
}
