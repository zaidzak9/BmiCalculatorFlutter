import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'util/constants.dart';

class BoxContainer2 extends StatefulWidget {
  final String whichBox;
  const BoxContainer2(this.whichBox);

  @override
  _BoxContainer2State createState() => _BoxContainer2State();
}

class _BoxContainer2State extends State<BoxContainer2> {
  int height = 180;
  @override
  Widget build(BuildContext context) {
    return containerToDisplay();
  }

  Widget containerToDisplay() {
    if (widget.whichBox == kMale) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            FontAwesomeIcons.mars,
            size: 90.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text("MALE", style: kLabelTextStyle)
        ],
      );
    } else if (widget.whichBox == kFemale) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            FontAwesomeIcons.venus,
            size: 90.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "FEMALE",
            style: kLabelTextStyle,
          )
        ],
        //
      );
    } else if (widget.whichBox == kHeight) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Text(
            "Height",
            style: kLabelTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.baseline,
            //textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(
                height.toString(),
                style: kHeavyTextStyle,
              ),
              Text(
                "cm",
                style: kLabelTextStyle,
              )
            ],
          ),
          Slider(
            value: height.toDouble(),
            min: 120.0,
            max: 220.0,
            activeColor: kActiveColorBar,
            inactiveColor:kInactiveColorBar,
            onChanged: (double onChange){
              setState(() {
                height = onChange.round();
              });
            },
          )
        ],
        //
      );
    } else if (widget.whichBox == kWeight) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

        ],
        //
      );
    } else if (widget.whichBox == kProgress) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
        ],
        //
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Icon(Icons.call_made)],
        //
      );
    }
  }
}

