import 'package:flutter/material.dart';
//import 'package:flutter_api/models/Categorie.dart';
import 'ui2 2.dart';


class HomePage extends StatefulWidget {

  static const routeName = '/';

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {


  final _myListKey = GlobalKey<AnimatedListState>();

 // List<Categorie> categories = [];

  @override
  void initState() {
    super.initState();
    loadCategories();
  }

  void loadCategories() async {
   // List<Categorie> categoriesList = await Categorie.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/b.jpg"),
                  fit: BoxFit.cover
              )
          ),
          child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  customText('Treva Shop', weight: FontWeight.bold, size: 35.0),
                  Spacer(flex: 2,),
                  //Divider,
                  Container(
                    width: 70.0,
                    height: 1.5,
                    color: Colors.white,
                  ),
                  SizedBox(height: 10.0,),
                  customText('Get best product in treva shop', size: 20.0),
                  Spacer(),
                  customButton("Signup"),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 1.5,
                          width: 100.0,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text('OR SKIP', style: TextStyle(color: Colors.white),),
                        ),
                        Container(
                          height: 1.5,
                          width: 100.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  customButton("Login"),
                  Spacer()
                ],
              ),
          )
        ),
    );
  }

  Widget customButton(String data) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: RaisedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>Ui2()));
          },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
          side: BorderSide(color: Colors.white)
        ),
        color: Colors.transparent,
        child: Container(
          height: 55,
          width: double.infinity,
          alignment: Alignment.center,
          child: customText(data, size: 20.0),
        ),
      ),
    );
  }

  Widget customText(String data, {double size, FontWeight weight, Color color: Colors.white}) {
    return Text(data, style: TextStyle(color: color, fontWeight: weight, fontSize: size,), textAlign: TextAlign.center,);
  }
}

