import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _ageController = new TextEditingController();
  final TextEditingController _heightController = new TextEditingController();
  final TextEditingController _weightController = new TextEditingController();
  double cent = 0.0;

  double bmi = 0.0;
  String _resulReading = "";
  String _finalResult = "";

  void calculateIbm() {
    setState(() {
      int age = int.parse(_ageController.text);
      double height = double.parse(_heightController.text);
      cent = height * 100;
      double weight = double.parse(_weightController.text);
      if ((_ageController.text.isNotEmpty || age > 0) &&
              (_heightController.text.isNotEmpty || height > 0) &&
              (_weightController.text.isNotEmpty) ||
          weight > 0) {
        bmi = (weight / (cent * cent)) * 10000;
        print(bmi);

        if (double.parse(bmi.toStringAsFixed(1)) < 18.1) {
          _resulReading = "Underweight";
          print(_resulReading);
          print("  asd  asd $bmi");
        } else if (double.parse(bmi.toStringAsFixed(1)) >= 18.5 && bmi < 25) {
          _resulReading = "Great Shape!";
          print(_resulReading);
        } else if (double.parse(bmi.toStringAsFixed(1)) >= 25.0 && bmi < 30) {
          _resulReading = "Overweight";
          print(_resulReading);
        } else if (double.parse(bmi.toStringAsFixed(1)) >= 30.0) {
          _resulReading = "Obese";
          print(_resulReading);
        }
      } else {
        bmi = 0.0;
      }
    });
    _finalResult = "Your BMI. ${bmi.toStringAsFixed(1)}";
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("IBM"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          padding: const EdgeInsets.all(3.5),
          children: <Widget>[
            new Image.asset(
              'images/bmilogo.png',
              height: 133.0,
              width: 200.3,
            ),
            new Container(
              margin: const EdgeInsets.all(2.0),
              alignment: Alignment.center,
              color: Colors.grey.shade300,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _ageController,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      labelText: "Age",
                      hintText: "digit your age",
                      icon: new Icon(Icons.person_outline),
                    ),
                  ),
                  new TextField(
                    controller: _heightController,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        labelText: "height in feet",
                        hintText: "digit your heiht",
                        icon: new Icon(Icons.assessment)),
                  ),
                  new TextField(
                    controller: _weightController,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        labelText: "Weight in lb",
                        hintText: "digit your weight",
                        icon: new Icon(Icons.dehaze)),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(12.0),
                  ),
                  new RaisedButton(
                    color: Colors.pinkAccent,
                    textColor: Colors.white,
                    child: Text(
                      "Calculate",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () => calculateIbm(),
                  ),
                ],
              ),
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.all(12.0),
                ),
                new Text(
                  " $_finalResult",
                  style: new TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w900,
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic),
                ),
                new Padding(
                  padding: new EdgeInsets.all(12.0),
                ),
                new Text(
                  "$_resulReading",
                  style: new TextStyle(
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
