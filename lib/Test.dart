import "package:flutter/material.dart";

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  double _slider1Val = 4;
  double _slider2Val = 4;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      Container(
        width: 400,
        padding: const EdgeInsets.all(15.0),
        child: Text(
          "Choose a Destination",
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: 2.0),
        height: 150.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
                width: 100.0,
                child: Column(
                  children: <Widget>[
                    Container(
                        width: 100,
                        height: 130,
                        child: Card(
                          child: Image.asset(
                            "assets/mum.jpg",
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          elevation: 4,
                          margin: EdgeInsets.all(4),
                        )),
                    Container(
                      width: 120,
                      height: 20,
                      child: Text(
                        "Mumbai",
                        style: TextStyle(fontSize: 12, color: Colors.black26),
                      ),
                    ),
                  ],
                )),
            Container(
                width: 100.0,
                child: Column(
                  children: <Widget>[
                    Container(
                        width: 100,
                        height: 130,
                        child: Card(
                          child: Image.asset(
                            "assets/bng.jpg",
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          elevation: 4,
                          margin: EdgeInsets.all(4),
                        )),
                    Container(
                      width: 120,
                      height: 20,
                      child: Text(
                        "Bangaluru",
                        style: TextStyle(fontSize: 12, color: Colors.black26),
                      ),
                    ),
                  ],
                )),
            Container(
                width: 100.0,
                child: Column(
                  children: <Widget>[
                    Container(
                        width: 100,
                        height: 130,
                        child: Card(
                          child: Image.asset(
                            "assets/nd.jpg",
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          elevation: 4,
                          margin: EdgeInsets.all(4),
                        )),
                    Container(
                      width: 120,
                      height: 20,
                      child: Text(
                        "New Delhi",
                        style: TextStyle(fontSize: 12, color: Colors.black26),
                      ),
                    ),
                  ],
                )),
            Container(
                width: 100.0,
                child: Column(
                  children: <Widget>[
                    Container(
                        width: 100,
                        height: 130,
                        child: Card(
                          child: Image.asset(
                            "assets/goa.jpg",
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          elevation: 4,
                          margin: EdgeInsets.all(4),
                        )),
                    Container(
                      width: 120,
                      height: 20,
                      child: Text(
                        "Goa",
                        style: TextStyle(fontSize: 12, color: Colors.black26),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
      Row(
        children: <Widget>[
          Expanded(child: Divider()),
          Text("No. of Visitors"),
          Expanded(
            child: Divider(),
          )
        ],
      ),
      Slider(
        value: _slider2Val,
        min: 0.0,
        max: 10.0,
        divisions: 10,
        label: '${_slider2Val.round()}',
        onChanged: (double value){
          setState(() => _slider2Val = value);
        },
      ),
      Row(
        children: <Widget>[
          Expanded(child: Divider()),
          Text("No. of Nights"),
          Expanded(
            child: Divider(),
          )
        ],
      ),
      Slider(
        value: _slider1Val,
        min: 0.0,
        max: 10.0,
        divisions: 10,
        label: '${_slider1Val.round()}',
        onChanged: (double value){
          setState(() => _slider1Val = value);
        },
      ),
      Row(
        children: <Widget>[
          Expanded(child: Divider()),
          Text("Mode of Transport"),
          Expanded(
            child: Divider(),
          )
        ],
      ),
    ]));
  }
}
