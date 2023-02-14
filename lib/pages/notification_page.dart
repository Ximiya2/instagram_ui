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

  bool item1 = false;
  bool item2 = false;
  bool item3 = false;
  bool item4 = false;
  bool item5 = false;

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
                  builder: (context) => StatefulBuilder(
                    builder: (BuildContext context, void Function(void Function()) setState) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
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
                                          onPressed: (){
                                            setState(() {
                                              item1 = false;
                                              item2 = false;
                                              item3 = false;
                                              item4 = false;
                                              item5 = false;
                                            });
                                          },
                                          child: Text('Clear', style: TextStyle(color: Colors.white,fontSize: 17),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Divider(thickness: 1,color: Colors.black12,),
                              Text('Categories', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                              //SizedBox(height: 17,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Tags & mentions', style: TextStyle(color: Colors.white,fontSize: 16),),
                                  Checkbox(
                                    //focusColor: Colors.red,
                                    shape: CircleBorder(),
                                      side: MaterialStateBorderSide.resolveWith(
                                      (states) => BorderSide(width: 2.0, color: item1 ? Colors.blue : Colors.white
                                      ),
                                      ),
                                      value: item1,
                                      onChanged: (newBool){
                                        setState(() {
                                          item1 = newBool!;
                                        });
                                      }
                                  ),
                                ],
                              ),
                              //SizedBox(height: 17,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Comments', style: TextStyle(color: Colors.white,fontSize: 16),),
                                  Checkbox(
                                      shape: CircleBorder(),
                                      side: MaterialStateBorderSide.resolveWith(
                                            (states) => BorderSide(width: 2.0,  color: item2 ? Colors.blue : Colors.white),
                                      ),
                                      value: item2,
                                      onChanged: (newBool){
                                        setState(() {
                                          item2 = newBool!;
                                        });
                                      }
                                  ),
                                ],
                              ),
                              // SizedBox(height: 17,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Follows', style: TextStyle(color: Colors.white,fontSize: 16),),
                                  Checkbox(
                                      shape: CircleBorder(),
                                      side: MaterialStateBorderSide.resolveWith(
                                            (states) => BorderSide(width: 2.0,  color: item3 ? Colors.blue : Colors.white),
                                      ),
                                      value: item3,
                                      onChanged: (newBool){
                                        setState(() {
                                          item3 = newBool!;
                                        });
                                      }
                                  ),
                                ],
                              ),
                              SizedBox(height: 17,),
                              Text('Account Types', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Verified', style: TextStyle(color: Colors.white,fontSize: 16),),
                                  Checkbox(
                                      shape: CircleBorder(),
                                      side: MaterialStateBorderSide.resolveWith(
                                            (states) => BorderSide(width: 2.0,  color: item4 ? Colors.blue : Colors.white),
                                      ),
                                      value: item4,
                                      onChanged: (newBool){
                                        setState(() {
                                          item4 = newBool!;
                                        });
                                      }
                                  ),
                                ],
                              ),
                              //SizedBox(height: 17,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('People you follow', style: TextStyle(color: Colors.white,fontSize: 16),),
                                  Checkbox(
                                      shape: CircleBorder(),
                                      side: MaterialStateBorderSide.resolveWith(
                                            (states) => BorderSide(width: 2.0,  color: item5 ? Colors.blue : Colors.white),
                                      ),
                                      value: item5,
                                      onChanged: (newBool){
                                        setState(() {
                                          item5 = newBool!;
                                        });
                                      }
                                  ),
                                ],
                              ),
                              //SizedBox(height: 17,),
                              //Divider(thickness: 1,color: Colors.black,),
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
                      );
                    },
                  ),
                );
              },
              child: Text('Filter', style: TextStyle(color: Colors.blue, fontSize: 18),),
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
