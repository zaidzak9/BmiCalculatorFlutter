import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'util/constants.dart';
int height = 180;
int weight = 75;
int age = 25;
class BoxContainer extends StatefulWidget {
  final String whichBox;
  const BoxContainer(this.whichBox);

  @override
  _BoxContainerState createState() => _BoxContainerState();
}

class _BoxContainerState extends State<BoxContainer> {

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
          Text(kMale, style: kLabelTextStyle)
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
            kFemale,
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
            kHeight,
            style: kLabelTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.baseline,
            //textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(
                height.toString(),
                style: kLabelHeavyTextStyle,
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
          Text("Weight",style: kLabelTextStyle,),
          Text(weight.toString()+" kg",style: kLabelHeavyTextStyle,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(onPressed: (){
                setState(() {
                  weight++;
                });
              },backgroundColor: kActiveColor,child: Icon(Icons.add,color: Colors.white),),
              SizedBox(width: 20),
              FloatingActionButton(onPressed: (){
                setState(() {
                  weight--;
                });
              },backgroundColor: kActiveColor,child: Icon(Icons.remove,color: Colors.white)),
            ],
          )
        ],
        //
      );
    } else if (widget.whichBox == kAge) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Age",style: kLabelTextStyle),
          Text(age.toString(),style: kLabelHeavyTextStyle),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(onPressed: (){
                setState(() {
                  age++;
                });
              },backgroundColor: kActiveColor,child: Icon(Icons.add,color: Colors.white,)),
              SizedBox(width: 20),
              FloatingActionButton(onPressed: (){
                setState(() {
                  age--;
                });
              },backgroundColor: kActiveColor,child: Icon(Icons.remove,color: Colors.white)),
            ],
          )
        ],
        //
      );
    } else {
      return Column();
    }
  }
}

