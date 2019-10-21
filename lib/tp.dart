import 'package:flutter/material.dart';
class Mtp extends StatefulWidget {
  @override
  _MtpState createState() => _MtpState();
}

class _MtpState extends State<Mtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 70),
            child: Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(left: 20),
                    child:Icon(Icons.arrow_back)
                ),
                Container(
                    margin: EdgeInsets.only(left: 100),
                    child:Text(
                      'Nike Sport',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                )
              ],
            ),

          ),
          Card(
            child: Container(
              height: 60,
              child: Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(left: 40),
                      child: Icon(Icons.arrow_drop_down),
                  ),
                  Container(

                    height: 10,width: 10,color: Colors.black,),
                  Text('Sort'),
                  Container(
                      margin: EdgeInsets.only(left: 100),
                      child: Icon(Icons.arrow_drop_down)),

                  Text('Reffine'),

                ],
              ),
            ),
          )
        ],
      
      ),
    );
  }
}
