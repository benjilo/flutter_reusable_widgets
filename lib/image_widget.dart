import 'package:flutter/material.dart';

class imageWidget extends StatelessWidget {
  const imageWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chope Image Widget'),
        ),
        body: Center(
          child: Container(
            color: Colors.grey,
            width: double.infinity,
            child: Column(children: <Widget>[
              Container(
                width: 360,
                margin: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image(
                    image: AssetImage('assets/food.png'),
                  ),
                ),
              ),
              Container(
                width: 400,
                //color: Colors.grey,
                margin: EdgeInsets.all(10),
                child: Stack(children: [
                  Container(
                      width: 400,
                      height: 290,
                      child: Card(
                        color: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0)),
                        ),
                      )),
                  Card(
                      child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0)),
                          child: Image(
                            image: AssetImage('assets/food1.png'),
                          ))),
                ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
