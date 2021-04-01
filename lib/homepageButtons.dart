import 'package:flutter/material.dart';

class HomepageButtons extends StatefulWidget {
  @override
  _HomepageButtonsState createState() => _HomepageButtonsState();
}

class _HomepageButtonsState extends State<HomepageButtons> {
  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    final scaleFactor = MediaQuery.of(context).textScaleFactor;
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Expanded(
              child: Container(
              width: widthScreen*0.8,
              child: Center(
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  onPressed: () {
                    print('done');
                  },
                  child: Text(
                    'BEHIND THE SCENES',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: Container(
              alignment: Alignment.center,
              child: Container(
                width: widthScreen*0.9,
                height: heightScreen*0.05,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                    side: BorderSide(color: Colors.white, width: 1),
                  ),
                  onPressed: () {
                    print('done');
                  },
                  child: Text(
                    'BECOME A CLIENT',
                    style: TextStyle(color: Colors.white, fontSize: 19*scaleFactor ),
                  ),
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}