import 'Test.dart';
import 'Test2.dart';
import 'Test3.dart';
import "package:flutter/material.dart";

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "TripVisor",
        home: Scaffold(
          appBar: AppBar(
            leading: Icon(
              Icons.menu,
            ),
            title: Text("Trip CalcLite"),
            toolbarOpacity: 0.8,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: Test(),
                ),
                Container(
                  child: Test2(),
                ),
                Container(
                  child: Test3(),
                ),
                SizedBox(height: 20,)
              ],
            ),
          ),
        ),
      ),
    );
