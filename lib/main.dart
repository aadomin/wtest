import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/MyHomePage/MyHomePage.dart';
import 'screens/MyHomePage/MyHomePageModel.dart';
import 'screens/OtherPage/OtherPageModel.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<MyHomePageModel>(
        create: (context) => MyHomePageModel(),
      ),
      ChangeNotifierProvider<OtherPageModel>(
        create: (context) => OtherPageModel(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      theme: ThemeData.light(),
    );
  }
}
