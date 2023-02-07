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
              onPressed: (){
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) => Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start  ,
                        children: [
                          Center(
                            child: Container(
                              height: 3,
                              width: 35,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 11,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('Filter', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 17),),
                                    ],
                                  )),
                              Expanded(
                                flex: 9,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                 // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                        onPressed: (){},
                                        child: Text('Clear', style: TextStyle(color: Colors.white,fontSize: 17),),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Divider(thickness: 1,color: Colors.black,),
                          Text('Categories', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                          SizedBox(height: 17,),
                          Row(
                            children: [
                              Text('Tags & mentions', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),

                            ],
                          ),
                          SizedBox(height: 17,),
                          Row(
                            children: [
                              Text('Tags & mentions', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),

                            ],
                          ),
                          SizedBox(height: 17,),
                          Row(
                            children: [
                              Text('Tags & mentions', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),

                            ],
                          ),
                          SizedBox(height: 30,),
                          Text('Account Types', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                          SizedBox(height: 17,),
                          Row(
                            children: [
                              Text('Tags & mentions', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),

                            ],
                          ),
                          SizedBox(height: 17,),
                          Row(
                            children: [
                              Text('Tags & mentions', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),

                            ],
                          ),
                          SizedBox(height: 17,),
                          Divider(thickness: 1,color: Colors.black,),
                         ElevatedButton(
                             onPressed: (){},
                             child:  Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 145),
                               child: Text('Apply ', style: TextStyle(color: Colors.white,),),
                             ),
                         )
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: Text('Filter', style: TextStyle(color: Colors.blue),),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Text('Yesterday', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
              Container(
                height: 650,
                child: ListView.builder(
                  shrinkWrap: true,
                  //scrollDirection: Axis.vertical,
                  itemCount: notificationsList.length,
                    itemBuilder: (context, index) {
                    return NotificationsItem(
                      context,
                      notificationsList[index],
                    );
                   }
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
