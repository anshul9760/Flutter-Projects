import 'home.dart';
import 'package:flutter/material.dart'; 
import 'package:local_auth/local_auth.dart';

void main() => HomePage(); 

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _authSuccess = false;
  LocalAuthentication  _localAuth;
  @override
  void initState() {
    super.initState();
    this._localAuth = LocalAuthentication();
  }
  Future<bool> _auth() async {
    setState(()=> this._authSuccess = false);
    if (await LocalAuthentication().canCheckBiometrics == false) {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text("You dont have FingerPrint in your Device")
        ),
      );
      return false;
    }
    final authSuccess = await this._localAuth.authenticateWithBiometrics(
      localizedReason: 'Authenticate to open App'
    );
    Scaffold.of(context).showSnackBar(
      SnackBar(content: Text("authSuccess=$authSuccess")),
    );
    return authSuccess;
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "TripVisor",
        routes: <String, WidgetBuilder>{
          '/a': (BuildContext context) => Second(),
        },
        home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.account_balance_wallet),
            title: Text("Trip Budget Calculator"),
          ),
          body:Container(
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
                    child: Container(
                      child:Column(
                        children: <Widget>[
                          FlatButton.icon(
                            icon: Icon(Icons.fingerprint),
                            label: Text("Authenticate to Procees"),
                            onPressed: () async {
                              final authSuccess = await this._auth();
                              setState(()=> this._authSuccess = authSuccess);
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext _context)=> Second()));
                            },
                          ),
                        ],
                      )  
                      ),
                      )
                  )),
            ),
          ),
    );
  }
}