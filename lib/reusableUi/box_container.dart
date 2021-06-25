import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

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
          Text("MALE", style: TextStyle(fontSize: 18.0))
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
            style: TextStyle(fontSize: 18.0),
          )
        ],
        //
      );
    } else if (whichBox == "progress") {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Icon(FontAwesomeIcons.bookMedical)],
        //
      );
    } else if (whichBox == "weight") {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Icon(FontAwesomeIcons.weight)],
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
