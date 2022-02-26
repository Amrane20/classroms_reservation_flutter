import 'package:app1/screans/amphicards.dart';
import 'package:app1/test/cardsTest.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../widgets/cards.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _currentindex = 0;

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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Text(
              'AMPHIS :',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildCard(url: 'assets/images/class1.jpg'),
                    buildCard(url: 'assets/images/class1.jpg'),
                    buildCard(url: 'assets/images/class1.jpg'),
                    buildCard(url: 'assets/images/class1.jpg'),
                  ],
                ),
              ),
            ),
            Text(
              'TPS :',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildCard(url: 'assets/images/t3.jpg'),
                    buildCard(url: 'assets/images/t3.jpg'),
                    buildCard(url: 'assets/images/t3.jpg'),
                    buildCard(url: 'assets/images/t3.jpg'),
                  ],
                ),
              ),
            ),

            Text(
              'SALLES :',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildCard(url: 'assets/images/classrom2.jpg'),
                    buildCard(url: 'assets/images/classrom2.jpg'),
                    buildCard(url: 'assets/images/classrom2.jpg'),
                    buildCard(url: 'assets/images/classrom2.jpg'),
                  ],
                ),
              ),
            ),

            // Expanded(
            //   flex: 1,
            //   child: ListView(
            //     children: [
            //       buildCard(url: 'assets/images/ud3.png'),
            //       buildCard(url: 'assets/images/ud3.png'),
            //       // buildCard(url: 'assets/images/ud3.png'),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(items: [
      //   BottomNavigationBarItem(icon: Icon(Icons.home)),
      //   BottomNavigationBarItem(icon: Icon(Icons.search)),
      //   BottomNavigationBarItem(icon: Icon(Icons.people)),
      // ]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'profile'),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'logout'),
        ],
        currentIndex: _currentindex,
        selectedItemColor: Color(0xffF33A5D),
        unselectedItemColor: Color(0xff3F5381),
      ),
    );
  }
}
