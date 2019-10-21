import 'package:flutter/material.dart';

class Carts extends StatefulWidget {
  @override
  _CartsState createState() => _CartsState();
}

class _CartsState extends State<Carts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 60, left: 150),
                child: Text(
                  'Chart',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20

                  ),
                ),

              ),

            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Card(
                  elevation: 10,
                  child: Container(
                    height: 370,
                    width: 350,
                    child: Row(
                      children: <Widget>[

                        Column(
                          children: <Widget>[

                            Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                    child: Image.asset("assets/aurore.jpg", fit: BoxFit.cover, height: 120,width: 120,)),



                                Column(
                                  children: <Widget>[
                                    Container(

                                     margin: EdgeInsets.only(left: 20),
                                      child: Text("Samsung Galaxy ...",

                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14

                                        ),),
                                    ),

                                    Container(

                                      margin: EdgeInsets.only(left: 20),
                                      child: Text("Internal 1 TB...",

                                        style: TextStyle(
                                            fontSize: 14

                                        ),),
                                    ),

                                    Container(

                                      margin: EdgeInsets.only(left: 20),
                                      child: Text("950",

                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14

                                        ),),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 20),
                                      child: Card(
                                        elevation: 5,
                                        child: Container(
                                          height: 35,
                                          width: 130,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Text("-"),
                                              Text("1"),
                                              Text("+"),
                                            ],
                                          ),

                                        ),
                                      ),
                                    ),
                                    


                                  ],
                                ),

                              ],
                            ),





                            Container(
                             margin: EdgeInsets.only(top: 70),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text("Total:950"),
                                  Container(
                                    margin: EdgeInsets.only(left: 130),
                                    child: RaisedButton(
                                      color: Colors.blue,

                                      onPressed:(){},

                                      child: Text("Play",
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                    ),
                                  )
                                ],
                              ),
                            )

                          ],
                        ),

                        Divider(height: 10,),

                      ],

                    ),

                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
