import 'package:flutter/material.dart';

import 'Ali.dart';

void main() => runApp(TuntunanWudhu());

class TuntunanWudhu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(color: Colors.white, elevation: 0)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Character"),
        centerTitle: true,
        actions: <Widget>[
          SizedBox(
            width: 20.0,
          )
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                openNewScreen(context, Ali());
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                height: 300,
                child: Stack(
                  children: <Widget>[
                    backgroundImage('assets/image/ali/ali.png'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  var teksgaya = TextStyle(
    fontSize: 35.0,
    color: Colors.white,
    fontFamily: 'Raleway',
    fontWeight: FontWeight.bold,
  );

  backgroundImage(String imageURL) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.blue.withOpacity(1.0), BlendMode.lighten),
            image: AssetImage(imageURL)),
      ),
    );
  }

  void openNewScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
