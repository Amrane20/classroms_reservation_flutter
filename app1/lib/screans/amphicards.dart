import 'package:app1/widgets/cards.dart';
import 'package:flutter/material.dart';

class amphis extends StatelessWidget {
  const amphis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            'AMPHIS :',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black54,
              fontFamily: 'Lato',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            // for the overview probleme
            scrollDirection: Axis.horizontal, //scrolling horizontaly
            child: Row(
              children: [
                buildCard(url: 'assets/images/ud3.png'),
                SizedBox(
                  width: 20,
                ),
                buildCard(url: 'assets/images/ud1.png'),
                SizedBox(
                  width: 20,
                ),
                buildCard(url: 'assets/images/ud2.png'),
                SizedBox(
                  width: 20,
                ),
                buildCard(url: 'assets/images/t1.png'),
                SizedBox(
                  width: 20,
                ),
                buildCard(url: 'assets/images/t2.png'),
                SizedBox(
                  width: 20,
                ),
                buildCard(url: 'assets/images/t3.jpg'),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 

// Widget buildercard() => Container(
//       width: 200,
//       height: 200,
//       color: Colors.yellow,
//     );
