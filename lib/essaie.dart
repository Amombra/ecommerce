import 'package:flutter/material.dart';
class Lists extends StatefulWidget {
  @override
  _ListsState createState() => _ListsState();
}

class _ListsState extends State<Lists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 150,),
            Container(
              margin: EdgeInsets.only(left: 50,top: 20),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                    
                  child: Container(
                   
                    child: RaisedButton(
                      elevation: 10,
                      onPressed: (){},
                      color: Colors.lightGreen,
                      padding: EdgeInsets.only(left: 100, right: 100, top: 18, bottom: 18),
                      child: Text("sign up",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
            ),
        ],
      ),
    );
  }
}