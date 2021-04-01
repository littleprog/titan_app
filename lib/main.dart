import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './homepagetitle.dart';
import './homepageButtons.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final scaleFactor = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/HomePageBackground.jpg'),
              fit: BoxFit.cover,
            )),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  HomePageTitle(),
                  Expanded(flex: 4, child: SizedBox()),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Text('Your investment team'),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                        alignment: Alignment.center,
                        width: widthScreen*0.80,
                        child: Text(
                        'Zinvest is a premier investment firm that manages \$500M for 25,000 clients',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16*scaleFactor),
                        ),
                         ),
                  ),
                  HomepageButtons(),
                ],
              ),
            )));
  }
}
