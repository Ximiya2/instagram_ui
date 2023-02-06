import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/models/notifications_models.dart';

Widget NotificationsItem(BuildContext context, NotificationsModel item) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      color: Colors.blue,
      child: item.isLiked
          ? Row(
        children: [
          Container(
            //padding: EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image(
                image: AssetImage(item.userImage),
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              TextButton(
                  onPressed: (){},
                  child: Text(item.userName, maxLines: 2,style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)
              ),
              Text(item.text, maxLines: 2, style: TextStyle( color: Colors.white),),
              Text(item.time, maxLines: 2, style: TextStyle( color: Colors.grey),)
            ],
          ),
          Container(
            height: 40,
            width: 40,
            padding: EdgeInsets.all(2),
            child: Image.asset(item.likeImage!, fit: BoxFit.cover,),
            // child: ClipRRect(
            //   borderRadius: BorderRadius.circular(70),
            //   child: Image(
            //     image: AssetImage(item.userImage),
            //     width: 40,
            //     height: 40,
            //     fit: BoxFit.cover,
            //   ),
            // ),
          ),
        ],
      )
          : Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(item.userImage),
          ),
          Column(
            children: [
              TextButton(
                  onPressed: (){},
                  child: Text(item.userName, maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)
              ),
              Text(item.text, maxLines: 2, style: TextStyle( color: Colors.white),),
              Text(item.time, maxLines: 2, style: TextStyle( color: Colors.grey),)
            ],
          ),
          item.isFollow ? ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey ),
              onPressed: (){},
              child: Text('Following', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)
          ) :
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue ),
              onPressed: (){},
              child: Text('Follow', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)
          ),
        ],
      ) ,
    ),
  );
}