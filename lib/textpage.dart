import 'package:flutter/material.dart';
import 'package:flutterdemo/text_form_widget.dart';
import 'package:flutterdemo/utils.dart';

import 'button_widget.dart';
import 'color_utils.dart';
import 'text_widget.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: Colors.blue,
//       ),
//       home: PageState(),
//     );
//   }
// }

class PageState extends StatefulWidget {
  const PageState({Key key}) : super(key: key);

  @override
  _PageStateState createState() => _PageStateState();
}

class _PageStateState extends State<PageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios_new,
        ),
      ),
      body: Center(
        child: SafeArea(child: chopetext()),
      ),
    );
  }
}

Widget chopetext() {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ChopeText(text: 'Text Here'),
        ChopeText(text: 'Any kind of text'),
        ChopeText(
          text: 'On Click Text here',
          color: Color(0xFF101125),
          size: 20,
          onClick: () {
            print('Go to how to create page');
          },
        ),
      ],
    ),
  );
}
