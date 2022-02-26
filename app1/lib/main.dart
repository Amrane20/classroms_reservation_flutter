import 'package:app1/reservationForm/reservation.dart';
import 'package:app1/screans/amphicards.dart';
import 'package:app1/screans/home.dart';
import 'package:app1/screans/intro.dart';
import 'package:app1/screans/login.dart';
import 'package:app1/screans/singleCard.dart';
import 'package:app1/test/navBar.dart';
import 'package:app1/test/test1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: introApp(),
        home: introApp(),
        // home: reservationPage(),
        // home: homePage(),
        // home: nav(),
        // home: amphis(),
        theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(25),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ));

    // routes:{
    //   'log: (context) => login()
    // }
  }
}
