import 'package:flutter/material.dart';
import 'package:location_example/map_screen.dart';
import 'package:location_example/splash_screen.dart';
import 'package:page_transition/page_transition.dart';


void main() {

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Google Maps Flutter",
      initialRoute: '/',
      onGenerateRoute: routing,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(0, 130, 128, 1.0),
        errorColor: Colors.red,
      ),
      home: SplashScreen(),
    );
  }

  Route routing(RouteSettings settings) {
    switch (settings.name) {
      case '/MapScreen':
        return PageTransition(
            child: MapSample(),
            type: PageTransitionType.rightToLeftWithFade);
        break;
       default:
        return null;
        break;
    }
  }
}
