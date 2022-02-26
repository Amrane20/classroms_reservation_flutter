import 'package:flutter/material.dart';

class dateField extends StatefulWidget {
  const dateField({Key? key}) : super(key: key);

  @override
  _dateFieldState createState() => _dateFieldState();
}

class _dateFieldState extends State<dateField> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: '$date',
        // prefixIcon: Icon(Icons.date_range_outlined),
        prefixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.date_range_outlined,
            color: Colors.black,
          ),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        )),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
