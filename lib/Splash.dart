import 'package:flutter/material.dart';
import 'package:myFlutter/data/Constants.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashPageState();
  }
}

class SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Colors.white,
      child: new Column(
        children: <Widget>[
          new Expanded(
              child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "什么值得买",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.none),
              ),
              Text(
                "帮/你/买/的/值",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.none),
              )
            ],
          )),
          new Container(
              margin: const EdgeInsets.only(bottom: 30),
              child:new Center(
                child:  new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      width: 40,
                      height: 40,
                      child: new Image.network(Constants.logoUrl),
                    ),
                    new Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "什么值得买",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  decoration: TextDecoration.none),
                            ),
                            Text(
                              "SMZDM.COM",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  decoration: TextDecoration.none),
                            )
                          ],
                        )),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    countDown();
  }

  void countDown() {
    var _duration = new Duration(seconds: 3);
    new Future.delayed(_duration, go2HomePage);
  }

  void go2HomePage() {
    Navigator.of(context).pushReplacementNamed('/indexPage');
  }
}
