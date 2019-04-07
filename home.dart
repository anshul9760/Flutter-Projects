import "package:flutter/material.dart";
import 'package:date_range_picker/date_range_picker.dart' as Date;
import 'package:progress_indicators/progress_indicators.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "TripVisor",
        home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.account_balance_wallet),
            title: Text("Trip Budget Calculator"),
          ),
          body: Container(
            child: Container(
              color: Colors.blue,
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 5.0, color: Colors.black),
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(20.0)),
                    padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
                    child: Container(child: _DropdowButtondemo(),)
                  )),
            ),
          ),
        ),
      );
  }
}

class _PageTwo extends MaterialPageRoute<Null>{
  _PageTwo()
    : super(builder: (BuildContext context) {
      return Scaffold(appBar: AppBar(
        title: Text("Processing Live Results"),
        elevation: 1.0,
      ),
      body: Center(
        child: JumpingDotsProgressIndicator(fontSize: 80.0,),
      ),
      );
    }
);}



class _DropdowButtondemo extends StatefulWidget {
  @override
  __DropdowButtondemoState createState() => __DropdowButtondemoState();
}

class __DropdowButtondemoState extends State<_DropdowButtondemo> {
  bool _input = true;
  bool _checkbox1 = true;
  bool _checkbox2 = true;
  bool _checkbox3 = true;
  bool _checkbox4 = true;
  bool _checkbox5 = true;
  static const menuItems = <String>[
    'New Delhi',
    'Mumbai',
    'Goa',
    'Bangalore',
    'Chennai',
    'Agra',
    'Pune',
    'Madras',
    'Mathura',
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            ),
      )
      .toList();
  String il1;
  String il2;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text("Select Initial Location : "),
            trailing: DropdownButton(
              value: il1,
              onChanged: ((String newValue) {
                setState(() {
                  il1 = newValue;
                });
              }),
              items: _dropDownMenuItems,
            ),
          ),
          ListTile(
            title: Text("Select Destination : "),
            trailing: DropdownButton(
              value: il2,
              onChanged: ((String newValue) {
                setState(() {
                  il2 = newValue;
                });
              }),
              items: _dropDownMenuItems,
            ),
          ),
          Divider(),
          Column(
            children: <Widget>[
              Text('Mode of Transportation'),
              Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Radio<bool>(
                          value: false,
                          groupValue: this._checkbox1,
                          onChanged: (bool value) {
                            setState(() => this._checkbox1 = value);
                          }),
                      Text("Bus    ")
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio<bool>(
                          value: false,
                          groupValue: this._checkbox2,
                          onChanged: (bool value) {
                            setState(() => this._checkbox2 = value);
                          }),
                      Text("Train      ")
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio<bool>(
                          value: false,
                          groupValue: this._checkbox3,
                          onChanged: (bool value) {
                            setState(() => this._checkbox3 = value);
                          }),
                      Text("Flight ")
                    ],
                  )
                ],
              )
            ],
          ),
          Divider(),
           Column(
            children: <Widget>[
              Text('In City Transportation'),
              Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Radio<bool>(
                          value: false,
                          groupValue: this._checkbox4,
                          onChanged: (bool value) {
                            setState(() => this._checkbox4 = value);
                          }),
                      Text("Two Wheeler")
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio<bool>(
                          value: false,
                          groupValue: this._checkbox5,
                          onChanged: (bool value) {
                            setState(() => this._checkbox5 = value);
                          }),
                      Text("Cab Rental")
                    ],
                  ),
                ],
              )
            ],
          ),
          Divider(),
          Column(children: <Widget>[
            SizedBox(height: 24.0),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter number of Travellers',
                errorText: _input ? null : 'Please enter an integer',
                border: OutlineInputBorder(),
              ),
              maxLines: 1,
            ),
          ]),
          Divider(),
          Column(children: <Widget>[
            Row(
              children:<Widget>[
                Text("Choose Dates  :    "),
                MaterialButton(
                  color: Colors.blueAccent,
                  onPressed: () async {
                    final List<DateTime> picked = await Date.showDatePicker(
                      context : context,
                      initialFirstDate: new DateTime.now(),
                      initialLastDate: (new DateTime.now()).add(new Duration(days: 7)),
                      firstDate: new DateTime(2019),
                      lastDate: new DateTime(2025)
                    );
                    if (picked != null && picked.length ==2) {
                      print(picked);
                    }
                  },
                  child: Text('Pick Date Range'),
                )
              ]
            )
          ]
          ),
          Divider(),
          Container(
            width: 400.0,
            height: 50.0,
            child: MaterialButton(
              color: Colors.lightBlue,
              child: Text("Lets GO"),
              onPressed: () {
                Navigator.push(context, _PageTwo());
              },
            ),
          ),
          Divider(),
          Container(
            height: 200.0,
          )
        ],
      ),
    );
  }
}
