import 'package:flutter/material.dart';
import 'package:shalom/internal.dart';
import 'package:shalom/screen2.dart';
import 'package:shalom/text.dart';
import'package:shalom/about.dart';
class Swip extends StatefulWidget{
  @override
  SwipState createState() => SwipState();
}
class SwipState extends State<Swip> with TickerProviderStateMixin {
  final int startingTabCount = 0;
  bool isSearching=false;

  List<Tab> tabs = List<Tab>();
  List<Widget> generalWidgets = List<Widget>();
  TabController tabController;
  @override
  void initState() {
    tabController = getTabController();
    super.initState();
  }

  TabController getTabController() {
    return TabController(length: tabs.length, vsync: this);
  }
  void _filterScreen(value){
    print(value);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
          length:3,
          child: Scaffold(
            backgroundColor: Theme.of(context).accentColor,
//            backgroundColor: Color(0XFF3B4254),
          drawer: MyHomePage(),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(90.0),
              child: AppBar(
                titleSpacing: 30,
                  backgroundColor: Theme.of(context).primaryColor,
                title: !isSearching? Text('የመዝሙር ደብተር',
                  style: TextStyle(fontSize: 25,fontFamily: 'Pacifico',fontWeight: FontWeight.w600),):TextField(onChanged: (value){
                  _filterScreen(value);
                },
                  style:TextStyle(color: Colors.white),decoration: InputDecoration(
                    icon: Icon(Icons.search,color:Colors.white ,),
                    hintText: "search here",hintStyle: TextStyle(
                    color: Colors.white)),
                ),
                centerTitle: true,
                bottom: TabBar(
                onTap: (index) {
                  switch (index) {
                    case 1:
                      Screen2();
                      break;
                      case 2:
                        Internal();
                        break;
                        case 3:
                          Screen2();
                          break;
                          default:
                            break;
                     }},
                  tabs: [
                    FittedBox(
                      child: FlatButton(onPressed: null,
                          child: Text('ምድብ',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w700,fontSize: 15),textAlign: TextAlign.left,)),
                    ),
                    FlatButton(onPressed:null,
                        child: Text('ሁሉም',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w700,fontSize: 15),)),
                    FlatButton(onPressed: null,
                        child: Text('ስለ',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w700,fontSize: 15),)),
                  ],

                ),
              ),
            ),

            body: TabBarView(
              children: [
                Screen2(),
                Internal(),
                About(),
              ],
            ),
          ),
        )

    );
  }

}
