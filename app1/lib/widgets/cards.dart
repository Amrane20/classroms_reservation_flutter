import 'package:flutter/material.dart';

class buildCard extends StatelessWidget {
  final String? url;
  const buildCard({Key? key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        // width: 200,
        width: MediaQuery.of(context).size.width * 0.6,
        // height: 250,
        height: MediaQuery.of(context).size.height * 0.7,
        // color: Colors.grey,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 1.5),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Salle 1 '),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  '$url',
                  height: MediaQuery.of(context).size.height * 0.19,
                  width: MediaQuery.of(context).size.width  ,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Reserver'),
                    color: Colors.black,
                    textColor: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  OutlineButton(
                    onPressed: () {},
                    child: Text('Historique'),
                    //  style: OutlinedButton.styleFrom(
                    //   side: BorderSide(
                    //     color: Colors.orange,
                    //   ),
                    borderSide: BorderSide(color: Color(0xff3F5381), width: 1),
                  ),

                  // textColor: ,
                ],
              ),
              // borderradius : BorderRadius.circular(40),
            ],
          ),
        ),
      ),
    );
  }
}
