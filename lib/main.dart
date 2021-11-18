import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp/buttons.dart';

void main() => runApp(TravelApp());

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        fontFamily: "Montserrat",
        scaffoldBackgroundColor: const Color.fromRGBO(145, 149, 252, 1),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/images/conifer-travelling.png"),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 0, right: 0, bottom: 20),
                child: Text(
                  "TRAVELER 369",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
              Buttons(buttonName: "Stays", printText: "Stays is clicked", buttonIcon: FontAwesomeIcons.home),
              Buttons(buttonName: "Flights", printText: "Flights is clicked", buttonIcon: FontAwesomeIcons.plane),
              Buttons(buttonName: "Cars", printText: "Cars is clicked", buttonIcon: FontAwesomeIcons.car),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.ship,
                    size: 20,
                    color: Colors.white,
                  ),
                  SizedBox(width: 15.0),
                  SizedBox(height: 60.0),
                  TextButton(
                    onPressed: () {
                      print("All-Inclusive Vacations is clicked");
                    },
                    child: Text(
                      "All-Inclusive Vacations",
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        primary: Color.fromRGBO(31, 120, 240, 1),
                        minimumSize: Size(250.0, 50.0)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
