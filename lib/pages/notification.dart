import 'package:flutter/cupertino.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);
static final String id ="notification_page";
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Notification"),
      ),
    );
  }
}