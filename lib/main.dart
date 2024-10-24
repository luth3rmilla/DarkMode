import 'package:flutter/material.dart';

void main() {
  runApp (MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  //This will be used to track wether dark mode is selected or not
  bool _isDark = false;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Test',
      themeMode: _isDark ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Testing Dark Mode')),
          body: Center(
            child:  IconButton(icon: Icon(
              _isDark ? Icons.dark_mode : Icons.light_mode,),
              onPressed: () {setState(() => _isDark = ! _isDark);}
          )
        ),
      ),
    );
  }
}