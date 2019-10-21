/*import 'material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/aurore.jpg"),
                fit: BoxFit.cover
            )
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 30.0),
              width: double.infinity,
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                      onPressed: () => print('click')
                  ),
                  PopupMenuButton(
                      itemBuilder: (buildContext) {
                        return [
                          PopupMenuItem(child: Text('Sauvegarder')),
                          PopupMenuItem(child: Text('Effacer')),
                        ];
                      },
                    child: Icon(Icons.more_vert, color: Colors.white,),
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Flexible(child: Container()),
                      Flexible(
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 80,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.3),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(Icons.star, color: Colors.white, size: 18.0,),
                                    myText('4.7', size: 18.0)
                                  ],
                                ),
                              ),
                              myText('North SEA', size: 35.0),
                              RichText(
                                  text: TextSpan(
                                    style: TextStyle(color: Colors.white),
                                    children: [
                                      TextSpan(
                                        text: "\$899",
                                        style: TextStyle(fontSize: 25.0)
                                      ),
                                      TextSpan(
                                        text: " per person",
                                        style: TextStyle(color: Colors.grey)
                                      ),
                                    ]
                                  )
                              ),
                              myText('occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. , sunt in culpa qui officia deserunt mollit anim id est laborum.', color: Colors.grey, size: 13.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    flex: 1,
                                      child: Center(
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.greenAccent,
                                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                                          ),
                                          child: Icon(Icons.map, color: Colors.white,),
                                        ),
                                      )
                                  ),
                                  Flexible(
                                    flex: 3,
                                      child: Center(
                                        child: Container(
                                          width: 200,
                                          height: 50,
                                          child: RaisedButton(
                                            onPressed: () {

                                            },
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10.0))
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                myText("Book now", color: Colors.black),
                                                Icon(Icons.arrow_forward)
                                              ],
                                            ),
                                          ),
                                        )
                                      )
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }

  Text myText(String data, {color: Colors.white, size: 18.0}) {
    return Text(
      data,
      style: TextStyle(color: color, fontSize: size),
    );
  }
}*/
