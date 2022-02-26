import 'package:app1/reservationForm/reservation.dart';
import 'package:app1/screans/amphicards.dart';
import 'package:app1/test/test1.dart';
import 'package:flutter/material.dart';
import 'package:app1/widgets/buttons.dart';

import 'login.dart';

class introApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        children: [
          Container(
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/std1.jpg',
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OriginalButton(
                        text: 'Get Started',
                        color: Colors.white,
                        textColor: Colors.white,
                        onPressed: () {
                          // Navigator.of(context).pushNamed('login');
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          loginForm(),
          // amphis(),
          homePage(),
          reservationPage(),

          // SizedBox(
          //   // child: Center(child: Text('welcome' style: TextStyle(color: Colors.pink,fontSize: 20),)),
          //   child: Center(
          //     child: Padding(
          //       padding: const EdgeInsets.all(25),
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           SizedBox(
          //             height: 80,
          //           ),
          //           TextField(),
          //           TextField(),
          //           SizedBox(
          //             height: 80,
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
      // body:
      // Padding(
      //   padding: const EdgeInsets.symmetric(vertical: 25),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: <Widget>[
      //       Image.asset(
      //         'assets/images/est1.jpg',
      //         height: MediaQuery.of(context).size.height * 0.9,
      //         fit: BoxFit.cover,
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 20),
      //         child: OriginalButton(
      //           text: 'Get Started',
      //           color: Colors.white,
      //           textColor: Colors.white,
      //           onPressed: () {
      //             Navigator.of(context).pushNamed('login');
      //           },
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  login() {}
}
