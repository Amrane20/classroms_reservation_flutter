import 'package:flutter/material.dart';

class testDate extends StatefulWidget {
  const testDate({Key? key}) : super(key: key);

  @override
  _testDateState createState() => _testDateState();
}

class _testDateState extends State<testDate> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.date_range)),
            SizedBox(
              width: 10,
            ),
            Text('$date'),
          ],
        ),
      ),
    );
  }
}
