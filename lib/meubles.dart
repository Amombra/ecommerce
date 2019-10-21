import 'package:flutter/material.dart';

class Meubles extends StatefulWidget {
  @override
  _MeublesState createState() => _MeublesState();
}

class _MeublesState extends State<Meubles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(top: true,
        
        child:
        Column(
          children: <Widget>[
            Stack(
            children: <Widget>[
            
              Container(
                child: Image.asset('assets/b.jpg',
                  fit:BoxFit.cover,
                  height: 666,
                  ),
              ),
                 Row(
               // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Icon(Icons.arrow_back_ios,
                  color: Colors.white,
                  ),
                ),
               
                Container(
                  margin: EdgeInsets.only(left: 280),
                  child: Icon(Icons.favorite_border,
                color: Colors.white,
                ),
                )
              ],
              ),
              //  SizedBox(
              //   height: 50,
              // ),
               
              Container(
                height: double.infinity,
                width: 360,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, i) {
                    return scrolls();
                  },
                ),
              ),

              Container(
                margin: EdgeInsets.only(top:240),
                height:425,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(80),
                  ),
                  color: Colors.white,
                ),
                child:Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:30, left:30),
                      child: Row(
                          children: <Widget>[
                            Icon(Icons.stars,color: Colors.orange,),
                             SizedBox(width:20),
                            Text(
                              'Club Flutter NaNien',
                              style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:30),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                           Text(
                              'Sekartaji Rooms',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 40,
                              margin: EdgeInsets.only(left:80),
                              child: Icon(
                              Icons.grid_on
                              ),
                              decoration: BoxDecoration(
                                color: Colors.lightGreen[100],
                                shape: BoxShape.circle
                              ),
                            ),
                        ],
                      ),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(left:30, bottom:20),
                       child: Row(
                         //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(Icons.star_border, color: Colors.lightGreen[200],),
                                 SizedBox(width:10),
                                Text('4.4'),
                                SizedBox(width:10),
                                //VerticalDivider(width: 10,endIndent: 10,color: Colors.black,),
                                Container(
                                  height:15,
                                  width: 2,
                                  color:Colors.black45
                                ),
                                SizedBox(width:10),
                                Text(
                                  '123 Reviews',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                )
                            ],
                            ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left:30, right: 30, bottom:8),
                       child: Row(
                              children: <Widget>[
                               Text(
                                 ' dbhdjdbdhvdhvd jdebhhdvbdhvc bdhvc bdhvc'
                               ),
                               
                              ],
                            ),
                     ),

                      Padding(
                       padding: const EdgeInsets.only(left:30, right: 30, bottom:8),
                       child: Row(
                              children: <Widget>[
                               Text(
                                 ' dbhdjdbdhvdhvd jdebhhdvbdhvc bdhvc bdhvc'
                               ),
                               
                              ],
                            ),
                     ),
                           Padding(
                             padding: const EdgeInsets.only(left:30, right: 30, bottom:8),
                             child: Row(
                              children: <Widget>[
                               Text(
                                 'dbhdjdbdhvdhvd jdebhhdvbdhvc bdhvc bdhvc'
                               ),
                               
                              ],
                          ),
                           ),
                            SizedBox(height:10 ,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: <Widget>[
                                listeicons(),
                                listeicons(),
                                listeicons(),
                                listeicons(),
                                listeicons(),
                                 
                               ]
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:30, top:8),
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){},
                                     child: Container(
                                    alignment: Alignment.center,
                              height: 55,
                              width: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.greenAccent,
                              ),
                              child: Text(
                                  'BOOK FOR SIZES NOW',
                                  style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:Colors.white,
                                    fontSize: 20
                                  )
                              ),
                            ),
                                )
                              ],
                            ),
                          )
                  ],
                ) ,
              )
              

              

              
            ],
             ),
          ],
        ),
      )
    );
  }
}

Widget listeicons(){
  return Container(
                    // height:60,
                    // width:60,
                    // decoration: BoxDecoration(
                    //   color:Colors.green[100],
                    //   borderRadius: BorderRadius.circular(20)
                    // ),
                   
                    child:Column(
                       children: <Widget>[
                          Container(
                             height:60,
                    width:60,
                    decoration: BoxDecoration(
                      color:Colors.green[100],
                      borderRadius: BorderRadius.circular(20)
                    ),
                            child: Icon(Icons.star,color:Colors.green)),
                           Text(
                                'wifi', textAlign: TextAlign.center,
                       )
                           
       ]
     )
   );
}

Widget scrolls(){
  return  Container(
                     margin: EdgeInsets.only(top:170, left: 20),
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child:Text(
                        'Flutter',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                   );
}



     