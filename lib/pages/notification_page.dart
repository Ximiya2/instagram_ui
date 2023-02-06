import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/items/notifications_item.dart';
import 'package:instagram_ui/states.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text('Notifications', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        actions: [
          TextButton(
              onPressed: (){},
              child: Text('Filter', style: TextStyle(color: Colors.blue),),
          ),
        ],
      ),
      body: Column(
        children: [
          ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: notificationsList.length,
              itemBuilder: (context, index) {
              return NotificationsItem(
                context,
                notificationsList[index],
              );
              }
          )
        ],
      )
    );
  }
}
