import 'package:flutter/material.dart';

class newCard extends StatelessWidget {
  const newCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 250,
        width: 250,
        color: Colors.pink,
      ),
    );
  }
}
