import 'package:flutter/material.dart';
class Appset extends StatefulWidget {
  @override
  _AppsetState createState() => _AppsetState();
}

class _AppsetState extends State<Appset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:  Row(
            children: <Widget>[
              SizedBox(height:150),
             
              Container(
                margin: EdgeInsets.only(left:20),
                child: Text('Category Brand',
              style:TextStyle(
                fontWeight: FontWeight.bold,
                color:Colors.black,
              )),
              ),
              Container(
                child: Container(
                  margin: EdgeInsets.only(left:190),
                  child:  Icon(Icons.search),
                ),
              ) ,
            ],
          )
    );
  }
}