import 'package:flutter/material.dart';

class reasonField extends StatefulWidget {
  const reasonField({Key? key}) : super(key: key);

  @override
  _reasonFieldState createState() => _reasonFieldState();
}

class _reasonFieldState extends State<reasonField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'For ...',
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
