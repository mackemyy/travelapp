import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String buttonName;
  final String printText;
  final IconData buttonIcon;

  const Buttons({
    required this.buttonName,
    required this.printText,
    required this.buttonIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            buttonIcon,
            size: 20,
            color: Colors.white,
          ),
          SizedBox(width: 15.0),
          SizedBox(height: 60.0),
          OutlinedButton(
            onPressed: () {
              print(printText);
            },
            child: Text(
              buttonName,
              style: TextStyle(fontSize: 18.0),
            ),
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              side: BorderSide(color: Colors.white, width: 2.0),
              minimumSize: Size(250.0, 50.0),
            ),
          ),
        ],
      ),
    );
  }
}
