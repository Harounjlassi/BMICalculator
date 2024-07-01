import 'package:flutter/material.dart';

const buttomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const buttomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
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
              children: [
                ReusableCard(colour: activeCardColour),
                ReusableCard(colour: activeCardColour),
              ],
            ),
          ),
          ReusableCard(colour: activeCardColour),
          Expanded(
            child: Row(
              children: [
                ReusableCard(colour: activeCardColour),
                ReusableCard(colour: activeCardColour),
              ],
            ),
          ),
          Container(
            color: buttomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: buttomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour});

  final Color colour;
  //const colorString = colour.toString();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}
