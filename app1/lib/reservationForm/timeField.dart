import 'package:flutter/material.dart';

class timeField extends StatefulWidget {
  const timeField({Key? key}) : super(key: key);

  @override
  _timeFieldState createState() => _timeFieldState();
}

class _timeFieldState extends State<timeField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            child: TextFormField(
          decoration: InputDecoration(
            hintText: 'From',
            prefixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.access_alarm,
                color: Colors.black,
              ),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            filled: true,
            fillColor: Colors.white,
          ),
        )),
        SizedBox(
          width: 5,
        ),
        Flexible(
            child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Until',
            prefixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.access_alarm,
                color: Colors.black,
              ),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            filled: true,
            fillColor: Colors.white,
          ),
        )),
      ],
    );
  }
}
