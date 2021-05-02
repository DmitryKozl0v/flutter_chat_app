import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {

  final String text;
  final Function onPressed;

  const BlueButton({
    Key key, 
    @required this.text, 
    @required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 2.0,
        shape: StadiumBorder(),
      ),
      onPressed: this.onPressed,
      child: Container(
        width: double.infinity,
        height: 55.0,
        child: Center(child: Text(text, style: TextStyle (fontSize: 18.0), ))
      )
    );
  }
}


