import 'package:flutter/material.dart';

import 'amphicards.dart';

class allCards extends StatelessWidget {
  const allCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          amphis(),
          SizedBox(
            height: 15,
          ),
          amphis(),
          SizedBox(
            height: 15,
          ),
          amphis(),
          SizedBox(
            height: 15,
          ),
          amphis(),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
