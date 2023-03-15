import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/models/post_model.dart';

Widget itemOfPost(BuildContext context, PostModel post,
    {required void Function() liked, required void Function() liked2}) {
  return Container(
    color: Colors.white,
    margin: EdgeInsets.symmetric(vertical: 5),
    child: Column(
      children: [
        Stack(
          children: [
            FadeInImage(
              image: AssetImage(post.postImage),
              placeholder: AssetImage('assets/images/carrent/ph8.jpg'),
              width: MediaQuery.of(context).size.width,
                ),
            Positioned(
                child: Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.black.withOpacity(0.2),
                )),
            Positioned(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image(
                              image: AssetImage(post.userImage),
                              width: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            post.userName,
                            style: TextStyle(
                              color: Colors.white
                            ),
                          )
                        ],
                      ),
                      IconButton(
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
                                    height: MediaQuery.of(context).size.height * 0.5,
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Column(
                                        children: [
                                          Center(
                                            child: Container(
                                              height: 4,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade50,
                                                borderRadius: BorderRadius.circular(40),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 20,),
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    child: Icon(Icons.share_outlined, color: Colors.white,),
                                                    height: 55,
                                                    width: 55,
                                                    decoration: BoxDecoration(
                                                        color:  Colors.transparent,
                                                        borderRadius: BorderRadius.circular(70),
                                                        border: Border.all(
                                                            width: 1,
                                                            color: Colors.white
                                                        )
                                                    ),
                                                  ),
                                                  SizedBox(height: 5,),
                                                  Text('Share', style: TextStyle(color: Colors.white),),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 20),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      child: Icon(Icons.link, color: Colors.white,),
                                                      height: 55,
                                                      width: 55,
                                                      decoration: BoxDecoration(
                                                          color:  Colors.transparent,
                                                          borderRadius: BorderRadius.circular(70),
                                                          border: Border.all(
                                                              width: 1,
                                                              color: Colors.white
                                                          )
                                                      ),
                                                    ),
                                                    SizedBox(height: 5,),
                                                    Text('Link', style: TextStyle(color: Colors.white),),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 20),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      child: Icon(Icons.save, color: Colors.white,),
                                                      height: 55,
                                                      width: 55,
                                                      decoration: BoxDecoration(
                                                          color:  Colors.transparent,
                                                          borderRadius: BorderRadius.circular(70),
                                                          border: Border.all(
                                                              width: 1,
                                                              color: Colors.white
                                                          )
                                                      ),
                                                    ),
                                                    SizedBox(height: 5,),
                                                    Text('Save', style: TextStyle(color: Colors.white),),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 20),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      child: Icon(Icons.repeat, color: Colors.white,),
                                                      height: 55,
                                                      width: 55,
                                                      decoration: BoxDecoration(
                                                          color:  Colors.transparent,
                                                          borderRadius: BorderRadius.circular(70),
                                                          border: Border.all(
                                                              width: 1,
                                                              color: Colors.white
                                                          )
                                                      ),
                                                    ),
                                                    SizedBox(height: 5,),
                                                    Text('Remix', style: TextStyle(color: Colors.white),),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 20),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      child: Icon(Icons.qr_code_scanner, color: Colors.white,),
                                                      height: 55,
                                                      width: 55,
                                                      decoration: BoxDecoration(
                                                          color:  Colors.transparent,
                                                          borderRadius: BorderRadius.circular(70),
                                                          border: Border.all(
                                                              width: 1,
                                                              color: Colors.white
                                                          )
                                                      ),
                                                    ),
                                                    SizedBox(height: 5,),
                                                    Text('QR code', style: TextStyle(color: Colors.white),),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10,),
                                          Divider(
                                            thickness: 0,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(height: 10,),
                                          InkWell(
                                            child: Row(
                                              children: [
                                                Icon(Icons.star_border,color: Colors.white, size: 28,),
                                                SizedBox(width: 20,),
                                                Text('Add to favorites', style: TextStyle(fontSize: 18,color: Colors.white ),),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 15,),
                                          InkWell(
                                            child: Row(
                                              children: [
                                                Icon(Icons.person_remove_outlined,color: Colors.white, size: 28,),
                                                SizedBox(width: 20,),
                                                Text('Unfolow', style: TextStyle(fontSize: 18,color: Colors.white ),),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Divider(
                                            thickness: 0,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(height: 10,),
                                          InkWell(
                                            child: Row(
                                              children: [
                                                Icon(Icons.circle_notifications_outlined ,color: Colors.white, size: 28,),
                                                SizedBox(width: 20,),
                                                Text('Why you\`re seeing this post', style: TextStyle(fontSize: 18,color: Colors.white ),),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 15,),
                                          InkWell(
                                            child: Row(
                                              children: [
                                                Icon(Icons.not_interested,color: Colors.white, size: 28,),
                                                SizedBox(width: 20,),
                                                Text('Hide', style: TextStyle(fontSize: 18,color: Colors.white ),),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 15,),
                                          InkWell(
                                            child: Row(
                                              children: [
                                                Icon(Icons.message_outlined,color: Colors.redAccent, size: 28,),
                                                SizedBox(width: 20,),
                                                Text('Report', style: TextStyle(fontSize: 18,color: Colors.redAccent ),),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                      ),
                    ],
                  ),
                ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.favorite_border,
                  ),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.comment,
                  ),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.send,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.bookmark_border,
              ),
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 14),
          child: RichText(
            softWrap: true,
            overflow: TextOverflow.visible,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Liked By ',
                  style: TextStyle(color: Colors.black)
                ),
                TextSpan(
                    text: 'Sigmund, Yessenja, Dayana ',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)
                ),
                TextSpan(
                    text: ' and',
                    style: TextStyle(color: Colors.black)
                ),
                TextSpan(
                    text: ' 1234 others',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)
                ),
              ]
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
          child: RichText(
            softWrap: true,
            overflow: TextOverflow.visible,
            text: TextSpan(
                children: [
                  TextSpan(
                      text: post.userName,
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)
                  ),
                  TextSpan(
                      text: post.caption,
                      style: TextStyle(color: Colors.black,)
                  ),
                ]
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 14),
          alignment: Alignment.topLeft,
          child: Text(
            'February 2022',
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.grey
            ),
          )
        )
      ],
    ),
  );
}