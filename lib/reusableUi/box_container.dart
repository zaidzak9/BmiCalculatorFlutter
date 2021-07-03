import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'util/constants.dart';

//DEPRECATED
class BoxContainer extends StatelessWidget {
  final String whichBox;

  @override
  Widget build(BuildContext context) {
    return widgetToDisplay();
  }

  BoxContainer(this.whichBox);

  Widget widgetToDisplay() {
    if (whichBox == "male") {
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
    } else if (whichBox == "female") {
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
    } else if (whichBox == "progress") {
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
                "180",
                style: kHeavyTextStyle,
              ),
              Text(
                "cm",
                style: kLabelTextStyle,
              )
            ],
          ),

        ],
        //
      );
    } else if (whichBox == "weight") {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

        ],
        //
      );
    } else if (whichBox == "height") {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Icon(FontAwesomeIcons.textHeight)],
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
