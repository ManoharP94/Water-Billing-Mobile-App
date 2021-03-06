import 'package:flutter_login_page_ui/screens/home_screens/contactus.dart';
import 'package:flutter_login_page_ui/screens/home_screens/service.dart';
import 'package:flutter_login_page_ui/screens/home_screens/tarrif.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/screens/home_screens/committe.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mdi/mdi.dart';

import '../drawer.dart';
import 'login.dart';



class HomeScreen extends StatefulWidget {
  
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  
 
  @override
  Widget build(BuildContext context) {
     MediaQueryData media = MediaQuery.of(context);

    final Size screenSize = media.size;

       return Scaffold(
         appBar: AppBar(
        title: new Text('Home'),
        actions: <Widget>[
          FlatButton(
                onPressed: () {
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()), );
                },
                
                splashColor: Colors.yellow,
                color: Colors.deepPurple,
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right:5),
                        child: Icon(Mdi.login,  color: Colors.white),
                    ),
                    Text("Login", style: TextStyle(color: Colors.white, fontSize: 20))
                    
                  ],
                ),
              ),
        ],
        elevation: 5,
      ),
      drawer: SideDrawer(),
      body: new Container(
        width: screenSize.width,
        child: new ListView(
        children: <Widget>[
          sliderCarasoul(),
          new Container(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              children: <Widget>[
                Expanded(

                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Committe()), );
                  },
                  child:Container(
                    margin: EdgeInsets.only(top:20),
                    height:170.0,
                    width: 200.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      margin: EdgeInsets.all(20),
                      elevation: 10.0,
                      color: Colors.deepPurpleAccent,
                      child:Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.people, size: 40.0, color: Colors.white), 
                              Text("Committe",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Open-Sans",
                                fontSize: 20,
                                letterSpacing: 1.5)
                              ),
                            ],
                          )
                        )
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tarrif()), );
                    },
                  child:Container(
                    margin: EdgeInsets.only(top:20),
                    height:170.0,
                    width: 200.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      margin: EdgeInsets.all(20),
                      elevation: 10.0,
                      color: Colors.deepPurpleAccent,
                      child:Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.note_add, size: 40.0, color: Colors.white), 
                              Text("Tarrif Guide",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Open-Sans",
                                fontSize: 20,
                                letterSpacing: 1.5)
                              ),
                            ],
                          )
                        )
                      ),
                    ),
                  ),
                ),
                ),
              ]
            ),
          ),
          new Container(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              children: <Widget>[
                Expanded(

                child: InkWell(
                  onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ServiceScreen()), );
                        },
                  child:Container(
                    margin: EdgeInsets.only(top:5),
                    height:170.0,
                    width: 200.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      margin: EdgeInsets.all(20),
                      elevation: 10.0,
                      color: Colors.deepPurpleAccent,
                      child:Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FaIcon(FontAwesomeIcons.cogs, size: 40.0, color: Colors.white), 
                              Text("Our Service",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Open-Sans",
                                fontSize: 20,
                                letterSpacing: 1.5)
                              ),
                            ],
                          )
                        )
                      ),
                    ),
                  ),
                ),
                ),
                Expanded(
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Contact()), );
                  },
                  child:Container(
                    margin: EdgeInsets.only(top:5),
                    height:170.0,
                    width: 200.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      margin: EdgeInsets.all(20),
                      elevation: 10.0,
                      color: Colors.deepPurpleAccent,
                      child:Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.perm_contact_calendar, size: 40.0, color: Colors.white), 
                              Text("Contact Us",
                              style: TextStyle(
                                
                                color: Colors.white,
                                fontFamily: "Open-Sans",
                                fontSize: 20,
                                letterSpacing: 1.5,
                                )
                              ),
                            ],
                          )
                        )
                      ),
                    ),
                  ),
                ),
                ), 
              ]
            ),
          ), 
        ]
      ),  
    )
  );   
}
        Widget sliderCarasoul() {
          return Container(
      height: 250,
      child: new Carousel(
        boxFit: BoxFit.fill,
        images: [
          new AssetImage("assets/water.png"),
          new AssetImage("assets/water.png"),
          new AssetImage("assets/water.png"),
          
        ],
      ),
    );
  }
}
