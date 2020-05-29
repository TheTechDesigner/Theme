import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Light / Dark Theme';

  bool _switchValue = false;

  ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Color(0xFF832685),
    accentColor: Color(0xFFFAF2FB),
  );

  ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Color(0xFFC41A3B),
    accentColor: Color(0xFF1B1F32),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switchValue ? _darkTheme : _lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Switch',
                style: TextStyle(fontSize: 48.0),
              ),
              Switch(
                value: _switchValue,
                onChanged: (_newValue) {
                  setState(
                    () {
                      _switchValue = _newValue;
                    },
                  );
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.check),
          onPressed: () {},
        ),
      ),
    );
  }
}