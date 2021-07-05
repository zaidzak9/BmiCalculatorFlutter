import 'package:bmi_calculator_flutter/reusableUi/util/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final String bmi;
  final String description;
  final String result;

  ResultPage({@required this.bmi,@required  this.description,@required this.result});

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kToolbarName),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Container(
                  alignment: Alignment.center,
                  child: Text("Results page", style: kLabelTextStyle))),
          Expanded(
              flex: 10,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(25.0),
                color: kInactiveColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(widget.bmi, style: kLabelHeavyTextStyle),
                    Text(widget.result, style: kLabelTextStyle),
                    Text(widget.description, style: kLabelTextStyle)
                  ],
                ),
              )),
          Expanded(
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    color: Colors.pink,
                    child: Text(
                      "Go Back to Home",
                      style: TextStyle(fontSize: 22.0, color: Colors.white),
                    )),
              ))
        ],
      ),
    );
  }
}
