import 'package:flutter/material.dart';
import 'reusable_icon_button.dart';
import 'calc_page.dart';
import 'wallet_brain.dart';

const kBalanceStyle = TextStyle(fontSize: 40, fontWeight: FontWeight.bold);

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Home!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Current Balance:',
              style: kBalanceStyle,
            ),
            Row(
              textBaseline: TextBaseline.alphabetic,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: <Widget>[
                Text(
                  '0',
                  style: kBalanceStyle,
                ),
                Text('₹')
              ],
            ),
            ReusableIconButton(
              cardText: 'Money Spent',
              icon: Icon(Icons.money_off),
              onTap: () {
                BalanceCalculator calc = BalanceCalculator();
                calc.moneyspent = true;
                calc.moneyreceived = false;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalcPage()),
                );
              },
            ),
            SizedBox(height: 40),
            ReusableIconButton(
              cardText: 'Money Received',
              icon: Icon(Icons.attach_money),
              onTap: () {
                BalanceCalculator calc = BalanceCalculator();
                calc.moneyreceived = true;
                calc.moneyspent = false;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalcPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
