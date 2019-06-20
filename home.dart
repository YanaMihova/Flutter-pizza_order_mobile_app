import 'package:flutter/material.dart';
import "package:url_launcher/url_launcher.dart";
//import 'package:pizza/screen/order.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pizza app'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon (Icons.local_pizza,size: 120.0,color: Colors.amberAccent,),
                new RaisedButton(
                  onPressed: () {Navigator.of (context).pushNamed('/Order');},
                  textColor: Colors.black,
                  padding: const EdgeInsets.all(10.0),
                  child: new Text(
                    "Make Pizza",
                  ),
                ),
              ],
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon (Icons.location_on,size: 120.0,color: Colors.red,),
                new RaisedButton(
                  onPressed: () {Navigator.of (context).pushNamed('/Map');},
                  textColor: Colors.black,
                  padding: const EdgeInsets.all(10.0),
                  child: new Text(
                    "Find us",
                  ),
                ),
              ],
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon (Icons.settings_remote,size: 120.0,color: Colors.black,),
                new RaisedButton(
                  onPressed: () {Navigator.of (context).pushNamed('/Scan');},
                  textColor: Colors.black,
                  padding: const EdgeInsets.all(10.0),
                  child: new Text(
                    "Scan",
                  ),
                ),
              ],
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon (Icons.call,size: 120.0,color: Colors.green,),
                new RaisedButton(
                  onPressed: () => launch("tel://1234567890"),
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Call us'),
                ),
              ],
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner:false,
    );
  }
}