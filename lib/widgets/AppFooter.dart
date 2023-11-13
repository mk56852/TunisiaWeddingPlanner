library AppFooter;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppFooter extends StatefulWidget {
  //final int flex;
  final Color? backgroundColor;

  AppFooter({this.backgroundColor});
  @override
  State createState() => AppFooterState();
}

class AppFooterState extends State<AppFooter> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.transparent,
      child: new Align(
        alignment: Alignment.bottomCenter,
        child: new Padding(
          //padding: EdgeInsets.all(widget.padding == null ?5.0:widget.padding),
          padding: EdgeInsets.all(5.0),
          child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new Center(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Container(
                          height: 45.0,
                          width: 45.0,
                          child: Center(
                            child: Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    25.0), // half of height and width of Image
                              ),
                              child: IconButton(
                                icon: new Icon(
                                  Icons.facebook,
                                  size: 20.0,
                                ),
                                color: Color(0xFF162A49),
                                onPressed: () {},
                              ),
                            ),
                          )),
                      new Container(
                          height: 45.0,
                          width: 45.0,
                          child: Center(
                            child: Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    25.0), // half of height and width of Image
                              ),
                              child: IconButton(
                                icon: new Icon(
                                  Icons.tiktok,
                                  size: 20.0,
                                ),
                                color: Color(0xFF162A49),
                                onPressed: () {},
                              ),
                            ),
                          )),
                      new Container(
                          height: 45.0,
                          width: 45.0,
                          child: Center(
                            child: Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    25.0), // half of height and width of Image
                              ),
                              child: IconButton(
                                icon: new Icon(
                                  Icons.call,
                                  size: 20.0,
                                ),
                                color: Color(0xFF162A49),
                                onPressed: () {},
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
