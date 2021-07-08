import 'package:flutter/material.dart';

class OriginalButton extends StatelessWidget {
final String text;
final VoidCallback onPressed;
final Color textColor;
final Color bgColor;

  // ignore: sort_constructors_first
  const OriginalButton(
      {Key? key,
        required this.text,
        required this.onPressed,
        required this.textColor,
        required this.bgColor,
      })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 60,
      width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: bgColor,
        onPressed:onPressed,

        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25)
        ),

        child: Text(
          text,
          style:  TextStyle(color:textColor, fontSize: 18),
          ),
        ),

    );


}
  }

