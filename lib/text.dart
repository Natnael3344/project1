import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:provider/provider.dart';
/// ----  dark Theme  ----
final darkPrimary         = Color(0XFF282C35);
final darkAccent          = Color(0XFF3B4254);
final darkBackground      = Colors.white70;
final darkButton          = Color(0XFF282C35);
final darkTheme = ThemeData(
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    backgroundColor: darkBackground,
    buttonColor: darkButton,
);
/// ----  Blue Theme  ----
final bluePrimary         = Color(0xFF3F51B5);
final blueAccent          = Color(0xFFFF9800);
final blueBackground      = Colors.white70;
final blueButton          = Color(0xFF3F51B5);
final blueTheme = ThemeData(
    primaryColor: bluePrimary,
    accentColor: blueAccent,
    backgroundColor: blueBackground,
    buttonColor: blueButton
);

/// ----  Spooky Theme  ----
final spookyPrimary       = Color(0xFF000000);
final spookyAccent        = Color(0xFFBB86FC);
final spookyBackground    = Colors.white70;
final spookyButton          = Color(0xFF000000);
final spookyTheme = ThemeData(
  primaryColor: spookyPrimary,
  accentColor: spookyAccent,
  backgroundColor: spookyBackground,
  buttonColor: spookyButton
);

/// ----  Green Theme  ----
final greenPrimary        = Color(0xFF4CAF50);
final greenAccent         = Color(0xFF631739);
final greenBackground      = Colors.white70;
final greenButton          = Color(0xFF4CAF50);
final greenTheme = ThemeData(
    primaryColor: greenPrimary,
    accentColor: greenAccent,
    backgroundColor: greenBackground,
    buttonColor: greenButton
);

/// ----  Pink Theme  ----
final pinkPrimary         = Color(0xFFE91E63);
final pinkAccent          = Color(0xFF0C7D9C);
final pinkBackground      = Colors.white70;
final pinkButton          = Color(0xFFE91E63);
final pinkTheme = ThemeData(
    primaryColor: pinkPrimary,
    accentColor: pinkAccent,
    backgroundColor: pinkBackground,
    buttonColor: pinkButton
);
class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData = darkTheme;
  ThemeNotifier(this._themeData);

  getTheme() => _themeData;
  setTheme(ThemeData themeData) async {
    _themeData = themeData;
    notifyListeners();
  }
}

class ThemeButton extends StatelessWidget {
  final ThemeData buttonThemeData;

  ThemeButton({this.buttonThemeData});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return RawMaterialButton(
      onPressed: () {
        themeNotifier.setTheme(buttonThemeData);
      },
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 400),
        transitionBuilder: (Widget child, Animation<double> animation) =>
            ScaleTransition(
              child: child,
              scale: animation,
            ),
        child: _getIcon(themeNotifier),
      ),
      shape: CircleBorder(),
      elevation: 2.0,
      fillColor: buttonThemeData.primaryColor,
      padding: const EdgeInsets.all(15.0),
    );
  }

  Widget _getIcon(ThemeNotifier themeNotifier) {
    bool selected = (themeNotifier.getTheme() == buttonThemeData);

    return Container(
      key: Key((selected) ? "ON" : "OFF"),
      child: Icon(
        (selected) ? Icons.done : Icons.close,
        color: buttonThemeData.accentColor,
        size: 20.0,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  // Randomise the custom theme on the first load
  ThemeData customTheme = ThemeData(
      primaryColor:
      Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
      accentColor:
      Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
      backgroundColor: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text('ገጽታዎች',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22),),
              backgroundColor: Colors.blueGrey,
              leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,), onPressed:(){ Navigator.of(context).pop();}),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "ነባሪ ገጽታ ይምረጡ",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 21),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('ጥቁር',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                      )),
                      Expanded(child: ThemeButton(buttonThemeData: darkTheme),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('ሰማያዊ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.blue)),
                      )),
                      Expanded(child: ThemeButton(buttonThemeData: blueTheme)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('አረንጓዴ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.green)),
                      )),
                      Expanded(child: ThemeButton(buttonThemeData: greenTheme)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('ሐምራዊ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.pink)),
                      )),
                      Expanded(child: ThemeButton(buttonThemeData: pinkTheme)),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              "የእርስዎን ገጽታ ይምረጡ",
                style: TextStyle(fontWeight: FontWeight.w700,fontSize: 21),
            ),
            SizedBox(height: 24),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      flex: 5,
                      child: ThemeButton(buttonThemeData: customTheme)),
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 300,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  onPressed: () => openDialog("የመጀመሪያ ቀለም",
                                      customTheme.primaryColor, true),
                                  color: customTheme.primaryColor,
                                  child: Text("የመጀመሪያ ቀለም ይምረጡ",
                                      textAlign: TextAlign.center,
                                      style:
                                      customTheme.primaryTextTheme.button)),
                            ),
                          ),
                        ),
                        Spacer(),
                        Expanded(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 300,
                              child: FlatButton(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  onPressed: () => openDialog("ሁለተኛ ቀለም",
                                      customTheme.accentColor, false),
                                  color: customTheme.accentColor,
                                  child: Text("ሁለተኛ ቀለም ይምረጡ",
                                      textAlign: TextAlign.center,
                                      style:
                                      customTheme.primaryTextTheme.button)),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  // Returns simple container to display what color the theme is currently using.
  // Dialog to select colors for theme.
  void openDialog(String title, Color currentColor, bool primaryColor) {
    showDialog(
      context: context,

      builder: (context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(6.0),
          title: Text(title),
          content: SizedBox(
            width: 70,
            height: 200,
            child: MaterialColorPicker(
              selectedColor: currentColor,
              onColorChange: (color) => setState(() => customTheme =
              (primaryColor)
                  ? customTheme.copyWith(primaryColor: color)
                  : customTheme.copyWith(accentColor: color)),
              onMainColorChange: (color) => setState(() => customTheme =
              (primaryColor)
                  ? customTheme.copyWith(primaryColor: color)
                  : customTheme.copyWith(accentColor: color)),
            ),
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Done",
                style: Theme.of(context).textTheme.button,
              ),
            )
          ],
        );
      },
    );
  }
}
