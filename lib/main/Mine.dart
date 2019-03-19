import 'package:flutter/material.dart';

class mine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      children: <Widget>[
        _mineInfo(),
        _menu(),
      ],
    );
  }

  //个人信息
  Widget _mineInfo() {
    return new Container(
        margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
        child: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Container(
                  child: new Image(
                      image: new AssetImage("assets/images/pikachu.png")),
                  width: 50,
                  height: 50,
                ),
                new Container(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        child: new Text(
                          "Canc",
                          style: TextStyle(),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      new Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: new Row(
                          children: <Widget>[
                            new Container(
                              margin: const EdgeInsets.only(left: 5),
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  border: Border.all(
                                      color: Colors.black, width: 1.0),
                                  borderRadius: BorderRadius.circular(3.0)),
                              child: new Text(
                                "LV41",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            new Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: new Text(
                                "金币:61",
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                new Container(
                    margin: const EdgeInsets.all(15),
                    child: new Column(
                      children: <Widget>[
                        new Text(
                          "收藏",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        new Text(
                          "12",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    )),
                new Container(
                    margin: const EdgeInsets.all(15),
                    child: new Column(
                      children: <Widget>[
                        new Text(
                          "关注",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        new Text(
                          "12",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    )),
                new Container(
                    margin: const EdgeInsets.all(15),
                    child: new Column(
                      children: <Widget>[
                        new Text(
                          "足迹",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        new Text(
                          "12",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    )),
                new Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(color: Colors.red, width: 1.0),
                      borderRadius: BorderRadius.circular(20.0)),
                  width: 150,
                  height: 35,
                  margin: const EdgeInsets.only(left: 30),
                  alignment: AlignmentDirectional(0, 0),
                  child: new Text(
                    "签到领奖",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                )
              ],
            ),
            new Container(
                height: 60,
                padding: const EdgeInsets.only(top: 20, right: 15),
                decoration: new BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(243, 243, 243, 1)),
                    color: Color.fromRGBO(248, 248, 248, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )),
                child: new Row(
                  children: <Widget>[
                    new Image(
                        width: 100,
                        height: 40,
                        image: new AssetImage(
                            "assets/images/user_mine_wallet_icon.png")),
                    Text(
                      "金币礼包礼品卡点这儿",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Expanded(
                      child: new Container(
                        alignment: AlignmentDirectional(1, 0),
                        child: Text(
                          "我的钱袋",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ));
  }

  //菜单
  Widget _menu() {
    return Container(
      child: Column(
        children: <Widget>[
          //{,}
          _menuItem(icon: "assets/images/mine_msg.png", text: "我的消息"),
          _menuItem(icon: "assets/images/mine_pub.png", text: "我的发布"),
          _menuItem(icon: "assets/images/mine_trailer.png", text: "预告提醒"),
          new Container(
            margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
            height: 1,
            color: Color.fromRGBO(239, 239, 239, 0.9),
          ),
          _menuItem(icon: "assets/images/mine_quan.png", text: "优惠券"),
          _menuItem(icon: "assets/images/mine_medal.png", text: "我的勋章"),
          _menuItem(icon: "assets/images/mine_test.png", text: "我的众测"),
          new Container(
            margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
            height: 1,
            color: Color.fromRGBO(239, 239, 239, 0.9),
          ),
          _menuItem(icon: "assets/images/mine_gift.png", text: "邀请有礼"),
          _menuItem(icon: "assets/images/mine_service.png", text: "在线客服"),
          _menuItem(icon: "assets/images/mine_set.png", text: "设置"),
          new Container(
            margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
            height: 1,
            color: Color.fromRGBO(239, 239, 239, 0.9),
          ),
        ],
      ),
    );
  }

  //菜单组件
  Widget _menuItem({String icon, String text, int type}) {
    return new Container(
      margin: const EdgeInsets.only(top: 30, left: 20),
      child: new Row(
        children: <Widget>[
          Image(
            width: 20,
            height: 20,
            image: new AssetImage(icon),
          ),
          Container(
            margin: const EdgeInsets.only(left: 5),
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
