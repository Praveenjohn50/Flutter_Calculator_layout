import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;
  var t1=0;
  var t2=0;


  void doAddition() {
    setState(() {
      num1 = t1;
      num2 = t2;
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = t1;
      num2 = t2;
      sum = num1 - num2;
    });
  }
  passint(var v)
  {
    setState(() {
      t1=v;
    });
  }

  void doMul() {
    setState(() {
      num1 = t1;
      num2 = t2;
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = t1;
      num2 = t2;
      sum = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      t1 =0;
      t2= 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        color: Colors.black,
        padding: const EdgeInsets.all(0.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Text(
              "Output : $sum",
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),

            ),
            new Text(
              t1.toString(),
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),



            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),


            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("7"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: passint(7),
                ),
                new MaterialButton(
                  child: new Text("8"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: passint(8),
                ),
                new MaterialButton(
                  child: new Text("9"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: passint(9),
                ),
                new MaterialButton(
                  child: new Text("/"),
                  color: Colors.orange,
                  textColor: Colors.white,
                  onPressed: passint(0),
                ),
              ],
            ),


            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("4"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: passint(4),
                ),
                new MaterialButton(
                  child: new Text("5"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: passint(5),
                ),
                new MaterialButton(
                  child: new Text("6"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: passint(6),
                ),
                new MaterialButton(
                  child: new Text("*"),
                  color: Colors.orange,
                  textColor: Colors.white,
                  onPressed: passint(0),
                ),
              ],
            ),

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("1"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: passint(1),
                ),
                new MaterialButton(
                  child: new Text("2"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: passint(2),
                ),
                new MaterialButton(
                  child: new Text("3"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: passint(3),
                ),
                new MaterialButton(
                  child: new Text("-"),
                  color: Colors.orange,
                  textColor: Colors.white,
                  onPressed: passint(0),
                ),
              ],
            ),

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("."),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: passint(0),
                ),
                new MaterialButton(
                  child: new Text("0"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: passint(0),
                ),
                new MaterialButton(
                  child: new Text("C"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: passint(0),
                ),
                new MaterialButton(
                  child: new Text("+"),
                  color: Colors.orange,
                  textColor: Colors.white,
                  onPressed: passint(0),
                ),
              ],
            ),


            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),

            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Clear"),
                  color: Colors.greenAccent,
                  onPressed: doClear,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}