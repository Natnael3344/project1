import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:shalom/swip.dart';
class Screen2 extends StatefulWidget{
  @override
  _Screen2State createState()=>_Screen2State();

}
class _Screen2State extends State<Screen2> with AutomaticKeepAliveClientMixin<Screen2>{
  bool get wantKeepAlive => true;
  bool isSearching=false;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.black38,
//      backgroundColor: Color(0XFF3B4254),
        body: SafeArea(
            child: Reopen()),
    );
  }
  
  
}

class Reopen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Row(
          children: <Widget>[

            Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: ButtonTheme(
                        buttonColor: Colors.white70,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: RaisedButton(
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => BalladSong(),
                                ));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20,bottom: 20),
                            child: Container(
                              height : MediaQuery. of(context). size. height,
                              child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image(image: AssetImage('images/ballad.jpg'),)),
                              decoration: BoxDecoration( boxShadow: [
                                BoxShadow(
                                  offset: const Offset(3.0, 3.0),
                                  blurRadius: 5.0,
                                  spreadRadius: 2.0,
                                ),
                              ]),
                            ),
                          ),

                        ),
                      ),
                    ),
                    Center(child: Text('BALLAD',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white70),
                     )
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: ButtonTheme(
                        buttonColor: Colors.white70,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: RaisedButton(
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ChikaSong(),
                                ));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20,bottom: 20),
                            child: Container(
                              height : MediaQuery. of(context). size. height,
                              child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image(image: AssetImage('images/chika.jpg'),)),
                              decoration: BoxDecoration( boxShadow: [
                                BoxShadow(
                                  offset: const Offset(3.0, 3.0),
                                  blurRadius: 5.0,
                                  spreadRadius: 2.0,
                                ),
                              ]),
                            ),
                          ),

                        ),
                      ),
                    ),
                    Center(
                      child: Text('CHICKCHIKA',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white70),),
                    )
                  ],
                ),
              ),
            )
          ],
    ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[

              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: ButtonTheme(
                          buttonColor: Colors.white70,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: RaisedButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => DiscoSong(),
                                  ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20,bottom: 20),
                              child: Container(
                                height : MediaQuery. of(context). size. height,
                                child: FittedBox(
                                    fit: BoxFit.fill,
                                    child: Image(image: AssetImage('images/disco.jpg'),)),
                                decoration: BoxDecoration( boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(3.0, 3.0),
                                    blurRadius: 5.0,
                                    spreadRadius: 2.0,
                                  ),
                                ]),
                              ),
                            ),

                          ),
                        ),
                      ),
                      Center(child:  Text('DISCO',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white70),),)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: ButtonTheme(
                          buttonColor: Colors.white70,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: RaisedButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ReggaeSong(),
                                  ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20,bottom: 20),
                              child: Container(
                                height : MediaQuery. of(context). size. height,
                                child: FittedBox(
                                    fit: BoxFit.fill,
                                    child: Image(image: AssetImage('images/reggae.jpg'),)),
                                decoration: BoxDecoration( boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(3.0, 3.0),
                                    blurRadius: 5.0,
                                    spreadRadius: 2.0,
                                  ),
                                ]),
                              ),
                            ),

                          ),
                        ),
                      ),
                      Text('REGGAE',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white70),)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[

              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: ButtonTheme(
                          buttonColor: Colors.white70,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: RaisedButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => WaltzSong(),
                                  ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20,bottom: 20),
                              child: Container(
                                height : MediaQuery. of(context). size. height,
                                child: FittedBox(
                                    fit: BoxFit.fill,
                                    child: Image(image: AssetImage('images/waltz.jpg'),)),
                                decoration: BoxDecoration( boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(3.0, 3.0),
                                    blurRadius: 5.0,
                                    spreadRadius: 2.0,
                                  ),
                                ]),
                              ),
                            ),

                          ),
                        ),
                      ),
                      Center(child: Text('WALTZ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white70),))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: ButtonTheme(
                          buttonColor: Colors.white70,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: RaisedButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => WolloSong(),
                                  ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20,bottom: 20),
                              child: Container(
                                height : MediaQuery. of(context). size. height,
                                child: FittedBox(
                                    fit: BoxFit.fill,
                                    child: Image(image: AssetImage('images/wollo.jpg'),)),
                                decoration: BoxDecoration( boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(3.0, 3.0),
                                    blurRadius: 5.0,
                                    spreadRadius: 2.0,
                                  ),
                                ]),
                              ),
                            ),

                          ),
                        ),
                      ),
                      Center(child: Text('WOLLO  &  S.ROCK',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white70),))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
