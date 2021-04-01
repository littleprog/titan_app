import 'package:flutter/material.dart';

class HomePageTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final scaleFactor = MediaQuery.of(context).textScaleFactor;
    return Expanded(
      flex: 1,
      child: Row(
        children: [
          Container(
            child: Text(
              'Zinvest',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20*scaleFactor,
              ),
            ),
            margin: EdgeInsets.all(widthScreen* 0.05)
          ),
          Container(
              child: TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
            ),
            onPressed: () {
              print('done');
            },
            child: Text(
              'Log In',
              style: TextStyle(color: Colors.black),
            ),
          ))
        ],
      ),
    );
  }
}
