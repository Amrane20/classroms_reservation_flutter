import 'package:flutter/material.dart';

class timeTest extends StatefulWidget {
  const timeTest({Key? key}) : super(key: key);

  @override
  _timeTestState createState() => _timeTestState();
}

class _timeTestState extends State<timeTest> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
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
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.access_alarm,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text('From'),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
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
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.access_alarm,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Until'),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
