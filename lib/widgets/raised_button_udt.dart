import 'package:flutter/material.dart';

class RaisedButtonUDT extends StatelessWidget {
  Function onPressed;
  String title;

  RaisedButtonUDT({
    this.onPressed,
    this.title
  });
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => onPressed(context),
      color: Theme.of(context).accentColor,
      child: Text(title,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }
}
