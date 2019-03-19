import 'package:flutter/material.dart';

class HomeFilter extends StatefulWidget {
  const HomeFilter({
    Key key,
    this.text,
    this.type,
  })  : assert(text != null || type != null),
        super(key: key);

  final String text;
  final int type;

  @override
  State<StatefulWidget> createState() {
    return HomeFilterState();
  }
}

class HomeFilterState extends State<HomeFilter> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 80,
      padding: const EdgeInsets.only(left: 15, right: 15),
      color: Colors.white,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            widget.text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.normal),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Image(
                    width: 20,
                    height: 20,
                    image: AssetImage("assets/images/ic_action_search.png")),
                new Container(
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  child: Image(
                      width: 20,
                      height: 20,
                      image: AssetImage("assets/images/ic_action_filter.png")),
                ),
                Image(
                    width: 20,
                    height: 20,
                    image: AssetImage("assets/images/ic_action_add.png")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
