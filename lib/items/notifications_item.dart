import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/models/notifications_models.dart';

Widget NotificationsItem(BuildContext context, NotificationsModel item) {
  return Container(
    height: 80,
    width: MediaQuery.of(context).size.width,
    // color: Colors.blue,
    child: item.isLiked
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(2),
                child: SizedBox(
                  height: 45,
                  width: 45,
                  child: ClipOval(
                    child: Image.asset(
                      item.userImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 250,
                child: RichText(
                    maxLines: 2,
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                            text: item.userName,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                          text: item.text,
                        ),
                        TextSpan(
                            text: item.time,
                            style: TextStyle(
                              color: Colors.grey,
                            )),
                      ],
                    )),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 40,
                width: 40,
                //padding: EdgeInsets.all(2),
                child: Image.asset(
                  item.likeImage!,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // if(item.time == '1d') Text('Yesterday', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
              // if(item.time == '2d' ||
              //     item.time == '3d' ||
              //     item.time == '4d' ||
              //     item.time == '5d' ||
              //     item.time == '6d' ||
              //     item.time == '7d')  Text('This Week', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(2),
                    child: SizedBox(
                      height: 45,
                      width: 45,
                      child: ClipOval(
                        child: Image.asset(
                          item.userImage,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 200,
                    child: RichText(
                        maxLines: 2,
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          children: [
                            TextSpan(
                                text: item.userName,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(
                              text: item.text,
                            ),
                            TextSpan(
                                text: item.time,
                                style: TextStyle(
                                  color: Colors.grey,
                                )),
                          ],
                        )),
                  ),
                  item.isFollow
                      ? SizedBox(
                          width: 5,
                        )
                      : SizedBox(
                          width: 25,
                        ),
                  item.isFollow
                      ? ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey),
                          onPressed: () {},
                          child: Text(
                            'Following',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ))
                      : ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue),
                          onPressed: () {},
                          child: Text(
                            'Follow',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                ],
              ),
            ],
          ),
  );
}
