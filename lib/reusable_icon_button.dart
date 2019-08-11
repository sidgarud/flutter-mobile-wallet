import 'package:flutter/material.dart';

class ReusableIconButton extends StatelessWidget {
  ReusableIconButton({this.cardText, this.icon, this.onTap});
  final Icon icon;
  final String cardText;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 60),
      child: RaisedButton(
        child: ListTile(
          title: Text(cardText),
          trailing: icon,
        ),
        onPressed: onTap,
      ),
    );
  }
}
