import 'package:bmi_calculator_flutter/reusableUi/box_container.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child: BoxContainer("male")
                ),
                Expanded(
                    child: BoxContainer("female")
                )
              ],
            )),
            Expanded(
                child: BoxContainer("progress")
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: BoxContainer("weight")),
                Expanded(
                    child: BoxContainer("height"))
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
