import 'package:flutter/material.dart';
import 'wallet_brain.dart';
import 'main.dart';

class CalcPage extends StatefulWidget {
  @override
  _CalcPageState createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  @override
  void initState() {

    bool check;
    if()
    super.initState();
  }

  // Create a text controller and use it to retrieve the current value of the TextField.
  final mytextcontroller = TextEditingController();
  //final int currentBalance;
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    mytextcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Current Balance'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: mytextcontroller,
          ),
          RaisedButton.icon(
            //if(HomePage.moneyreceived == 1){currentBalance+=mytextcontroller.text}
            //if(HomePage.moneyspent == 1){currentBalance-=mytextcontroller.text}
            onPressed: () {
              BalanceCalculator calc = BalanceCalculator();
              if (calc.moneyreceived) {}
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    // Retrieve the text the that user has entered by using the
                    // TextEditingController.
                    content: Text(mytextcontroller.text),
                    //content: Text(toString(currentBalance)),
                  );
                },
              );
            },
            icon: Icon(Icons.done),
            label: Text('Calculate'),
          ),
          Center(
            child: RaisedButton.icon(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
//                BalanceCalculator calc = BalanceCalculator(
//                    moneyTransferred: int.parse(mytextcontroller.text));
                Navigator.pop(context);
              },
              label: Text('Go back!'),
            ),
          ),
        ],
      ),
    );
  }
}
