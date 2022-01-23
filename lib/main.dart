import 'package:flutter/material.dart';
import 'package:pdpui4/pages/home_page.dart';
import 'package:pdpui4/pages/notification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:HomePage(),
      routes: {
        HomePage.id:(context)=>HomePage(),
        NotificationPage.id:(context)=>NotificationPage(),
      },
    );
  }
}

