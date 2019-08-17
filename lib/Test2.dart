import "package:flutter/material.dart";

class Test2 extends StatefulWidget {
  @override
  _Test2State createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  bool _switch1=false;
  bool _switch2=false;
  bool _switch3=false;
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Container(
      
          height: 140.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
            Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                width: 100,
                height: 60,
                child: Image(
                      image: AssetImage("assets/train.ico"),
                      fit: BoxFit.scaleDown,
                    ),
              ),
              Container(child: 
                  Text('Train Mode'),),
              Container(child: Center(child: 
                  Switch(onChanged: (bool value){setState(()=> this._switch1 = value);},value: this._switch1,) ,), ),
            ]
          ),
          ),
          Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                width: 100,
                height: 60,
                child: Image(
                      image: AssetImage("assets/flight.ico"),
                      fit: BoxFit.scaleDown,
                    ),
              ),
              Container(child: 
                  Text('Flight Mode'),),
              Container(child: Center(child: 
                  Switch(onChanged: (bool value){setState(()=> this._switch2 = value);},value: this._switch2,) ,), ),
            ]
          ),
          ),
          Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 7),
                width: 100,
                height: 60,
                child: Image(
                      image: AssetImage("assets/bus.ico"),
                      fit: BoxFit.scaleDown,
                    ),
              ),
              Container(child: 
                  Text('Roadways'),),
              Container(child: Center(child: 
                  Switch(onChanged: (bool value){setState(()=> this._switch3 = value);},value: this._switch3,) ,), ),
            ]
          ),
          ),]
          ));
  }
}


              
