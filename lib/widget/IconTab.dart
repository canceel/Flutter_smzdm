import 'package:flutter/material.dart';

const double _navHeight = 50.0; // 导航高度
const double _marginBottom = 3.0; // 图标与文字的间隔

class IconTab extends StatefulWidget {
  const IconTab({
    Key key,
    this.text,
    this.icon,
    this.color,
  })  : assert(text != null || icon != null || color != null),
        super(key: key);
  final String text;
  final String icon;
  final Color color;

  @override
  State<StatefulWidget> createState() {
    return new IconTabState();
  }
}

class IconTabState extends State<IconTab> {
  Widget _buildLabelText() {
    return new Text(
      widget.text,
      softWrap: false,
      overflow: TextOverflow.fade,
      style: new TextStyle(
          color: widget.color,
          fontSize: 12,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none),
    );
  }

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));

    double height = _navHeight;
    Widget label = new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Container(
            child: new Image(
              image: new AssetImage(widget.icon),
              height: 20.0,
              width: 20.0,
            ),
            margin: const EdgeInsets.only(bottom: _marginBottom),
          ),
          _buildLabelText()
        ]);

    return new SizedBox(
      height: height,
      child: new Center(
        child: label,
        widthFactor: 1.0,
      ),
    );
  }
}
