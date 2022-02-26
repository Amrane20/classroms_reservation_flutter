import 'package:flutter/material.dart';

import '../widgets/buttons.dart';

class loginForm extends StatefulWidget {
  const loginForm({Key? key}) : super(key: key);

  @override
  _loginFormState createState() => _loginFormState();
}

class _loginFormState extends State<loginForm> {
  bool _maskedPass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //we used singleChildScrollview for the column overview
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/m.png',
                  height: MediaQuery.of(context).size.height * 0.6,
                  fit: BoxFit.cover,
                  //fit: BoxFit.fitWidth,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Form(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'username ',
                      hintText: 'enter username',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'password ',
                      prefixIcon: Icon(
                        Icons.lock,
                        // color: Color(0xff3F5381),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _maskedPass = !_maskedPass;
                          });
                        },
                        child: Icon(_maskedPass
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                    obscureText:
                        _maskedPass, //obscureText to not showing the password
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  OriginalButton(
                    text: 'log in',
                    color: Colors.white,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pushNamed('login');
                    },
                  ),
                  FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Forget password!',
                        style: TextStyle(color: Colors.black54),
                      ))
                ]),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
