import 'package:app1/reservationForm/dateField.dart';
import 'package:app1/reservationForm/reasonField.dart';
import 'package:app1/reservationForm/test.dart';
import 'package:app1/reservationForm/timeField.dart';
import 'package:app1/reservationForm/timeTest.dart';
import 'package:flutter/material.dart';

import '../widgets/buttons.dart';

class reservationPage extends StatefulWidget {
  const reservationPage({Key? key}) : super(key: key);

  @override
  State<reservationPage> createState() => _reservationPageState();
}

class _reservationPageState extends State<reservationPage> {
  int _currentindex = 0;
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 15),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
              size: 25,
            ),
          ),
        ],
        elevation: 0, // remve the bottom line (remove the elevation)
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          iconSize: 25,
          padding: EdgeInsets.only(left: 15, top: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
            child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/datePick1.png',
            ),
            testDate(),
            // dateField(),
            SizedBox(
              height: 10,
            ),
            timeTest(),
            // timeField(),
            SizedBox(
              height: 10,
            ),
            reasonField(),
            SizedBox(
              height: 15,
            ),
            OriginalButton(
              text: 'Reserve',
              color: Colors.black,
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).pushNamed('login');
              },
            ),
          ],
        )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // elevation: 0,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          // BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'notification'),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'logout'),
        ],
        currentIndex: _currentindex,
        selectedItemColor: Color(0xffF33A5D),
        unselectedItemColor: Color(0xff3F5381),
      ),
    );
  }
}
