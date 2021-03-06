import 'package:examate/pages/login.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'pages/home.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Home(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
        ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/" : (context) => LoginPage(),
        "/login" : (context) => LoginPage(),

        "/home" : (context) => Home()

      },
    );
  }
}
