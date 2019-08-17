

import "package:flutter/material.dart";

class Test3 extends StatefulWidget {
  @override
  _Test3State createState() => _Test3State();
}

class _Test3State extends State<Test3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
          child: Text('Calculate'),
          onPressed: () {
            Navigator.push(context, _PageTwo());
          },
        ),
    );
  }
}

class _PageTwo extends MaterialPageRoute<Null> {
  _PageTwo()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Change Response'),
              elevation: 5.0,
            ),
            body: Builder(
              builder: (BuildContext context) => Center(
                child: Center(
                  child: Container(
                  height: 70,
                  width: 250,
                  decoration: BoxDecoration(border: Border.all(width: 3)),
                  child: 
                  Text("Rs. 15000",
                      style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold,),),)
                    
                  
                ),
              ),
            ),
          );
        });
}