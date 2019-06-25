import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: null,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      labelText: "Age",
                      hintText: "digit your age",
                      icon: new Icon(Icons.person_outline),
                    ),
                  ),

                  new TextField(
                    controller: null,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      labelText: "height in feet",
                      hintText: "digit your heiht",
                      icon:  new Icon(Icons.assessment)
                    ),
                  ),
                  new TextField(
                  controller: null,
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                    labelText: "Weight in lb",
                    hintText: "digit your weight",
                    icon: new Icon(Icons.dehaze)
                  ),
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
                    onPressed: ()=> print("pulsado"),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(12.0),
                  ),
                  new Text(
                    "salida de IBM calculado",
                        style: new TextStyle(
                          color: Colors.blue,  fontWeight: FontWeight.w900,fontSize: 20.0),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(12.0),
                  ),
                  new Text(
                    "salidaa de ressultado",
                    style: new TextStyle(
                        color: Colors.pinkAccent,  fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
