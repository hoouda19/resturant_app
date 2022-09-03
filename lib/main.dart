import 'package:flutter/material.dart';
import '/layout/home_layout.dart';
import '/moduels/welcome_screen.dart';
import 'routes/onboard_page_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:onboardPageView() ,
    );
  }
}

