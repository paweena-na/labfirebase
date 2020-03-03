import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final String titleString = "ยินดีต้อนรับ";


  Widget calculator() {
    return Container(
      width: 250.0,
      child: RaisedButton.icon(
        icon: Icon(
          Icons.account_box,
          color: Colors.white,
        ),
        color: Colors.purple[400],
        label: Text('Calculator'),
        onPressed: () {
          var rount =
              MaterialPageRoute(builder: (BuildContext context) => LoginPage());
          Navigator.of(context).push(rount);
        },
      ),
    );
  }



  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: RadialGradient(
              colors: [Colors.white, Colors.purpleAccent], radius: 2.0 //กระจายสี
              )),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            calculator(),
          ],
        ),
      ),
    );
  }
}