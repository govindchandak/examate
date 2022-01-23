import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final double date = 30;
    final String hello = " welcome to examate";
    var day = "ijdfidij";

    return Scaffold(
        appBar: AppBar(
          title: Text("cataloe app"),
        ),
        body: Center(
          child: Container(
            child: Text("welocme to $date examate hello smckmkcd $hello"),
          ),
        ),
        drawer: Drawer(),
      );
  }
}