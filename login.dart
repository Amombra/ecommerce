import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Image.network("https://cdn.pixabay.com/photo/2017/08/01/08/29/people-2563491__340.jpg",
            fit:BoxFit.cover,
            height: 700,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 100,
                  width:100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pink,
                  ),
                  child: Icon(Icons.shopping_basket,
                  color: Colors.white,
                  size: 20,),
                ),
                Container(
                  child: Text(
                    "Treva Shop",
                    style:TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    )
                  ),
                ),
                SizedBox(height:30),
                
              ],
            ),
            Container(
              child:Column(
                children: <Widget>[
                  ClipRRect(
               borderRadius: BorderRadius.circular(100),
                child: Container(
                  child: RaisedButton(
                    elevation: 10,
                    onPressed: (){
                    },
                    color: Colors.purple,
                    padding: EdgeInsets.only(left: 60, right: 60, top: 20, bottom: 20),
                    child: Text("Login With Facebook",
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
              SizedBox(height:20),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  child: RaisedButton(
                    elevation: 10,
                    onPressed: (){
                    },
                    color: Colors.purple,
                    padding: EdgeInsets.only(left: 60, right: 60, top: 20, bottom: 20),
                    child: Text("Login With Google",
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
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}

/*
 Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                ),
                child: Container(
                  child: RaisedButton(
                    elevation: 10,
                    onPressed: (){
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                    },
                    color: Colors.lightGreen,
                    padding: EdgeInsets.only(left: 55, right: 55, top: 30, bottom: 30),
                    child: Text("CRÉER UN COMPTE",
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
              Container(
                padding: EdgeInsets.all(20),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
                child: Container(
                  child: RaisedButton(
                    elevation: 20,
                    onPressed: (){
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                    },
                    color: Colors.lightGreen,
                    padding: EdgeInsets.only(
                      left: 65, right: 65,
                      top: 30, bottom: 30,
                    ),
                    child: Text("SE CONNECTER",
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
            ],
          ),
 */