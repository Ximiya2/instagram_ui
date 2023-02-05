import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/models/story_model.dart';
import '../states.dart';

Widget itemOfStory(StoryModel story) {
  return story != storiesList[0] ? Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          border: Border.all(
            width: 2,
            color: story.isSeen ? Colors.grey : Color(0xffb71c73),
          )
        ),
        child: Container(
          padding: EdgeInsets.all(2),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(70),
            child: Image(
              image: AssetImage(story.image),
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      SizedBox(
        width: 70,
        child: Center(
          child: Text(story.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,),
        ),
      )
    ],
  ) :
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  border: Border.all(
                    width: 2,
                    color: story.isSeen ? Colors.grey : Color(0xffb71c73),
                  )
              ),
              child: Container(
                padding: EdgeInsets.all(2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: const Image(
                    image: AssetImage('assets/images/carrent/icon_amazon.png'),
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 30,
                right: 5,
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(70),
                      border: Border.all(
                        width: 2,
                        color: Colors.black,
                      )
                  ),
                  child: Icon(Icons.add, color: Colors.white,size: 20,),
                ),
            ),
           const Positioned(
              bottom: 15,
              left: 15,
              child: Text('Your story',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,),
            )
          ],
        ),
      );
}