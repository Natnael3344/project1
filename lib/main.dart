import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shalom/title.dart';
import 'package:shalom/text.dart';
import 'package:provider/provider.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(ChangeNotifierProvider<ThemeNotifier>(
        create: (_) => ThemeNotifier(darkTheme), child: MyApp()));
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Swip(),
      theme: themeNotifier.getTheme(),
    );
  }
}
