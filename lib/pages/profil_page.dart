import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../items/item_profileHeaderWidget.dart';
import 'item1.dart';
import 'item2.dart';
import 'item3.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> with SingleTickerProviderStateMixin {
   late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(Icons.arrow_back, color: Colors.black,),
            SizedBox(width: 15,),
            Text(
              'ilmhub.uz',
              selectionColor: Colors.black,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(width: 110,),
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
                size: 30,
              ),),
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_vert,color: Colors.black,))
          ],
        ),
        // bottom: TabBar(
        //   //labelStyle: TextStyle(fontSize: 18, color: Colors.black),
        //   indicatorColor: Colors.black45,
        //   labelColor: Colors.black,
        //   unselectedLabelColor: Colors.white,
        //   controller: tabController,
        //   isScrollable: true,
        //   tabs: [
        //     Tab(
        //       icon:  Icon(Icons.grid_on_sharp, color: Colors.black,),
        //     ),
        //     Tab(
        //       icon: Icon(Icons.video_collection, color: Colors.black,),
        //     ),
        //     Tab(
        //       icon: Icon(Icons.perm_contact_cal_outlined, color: Colors.black,),
        //     ),
        //   ],
        // ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/carrent/ph19.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      'ilmhub IT School',
                      style: TextStyle(color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      '29',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Text(
                      'Posts',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      '1,627',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Folloowers',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      '3',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Like',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      'Edit progile',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey.shade800),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ))),
                ),
                SizedBox(width: 8,),
                ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      'Share profil',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey.shade800),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ))),
                ),
                SizedBox(width: 8,),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.person_add,
                    color: Colors.white,
                    size: 22,
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey.shade800),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ))),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // DefaultTabController(
          //     length: 3,
          //     child: NestedScrollView(
          //       headerSliverBuilder: (context, _) {
          //         return [
          //           SliverList(delegate: SingleChildLayoutDelegate([
          //             profileHeaderWidget(context),
          //           ]))
          //         ]
          //       },
          //       body: Material(
          //         color: Colors.black,
          //         child: TabBar(
          //           //controller: tabController,
          //           labelColor: Colors.black,
          //           unselectedLabelColor: Colors.grey[400],
          //           indicatorWeight: 1,
          //           indicatorColor: Colors.black,
          //           tabs: [
          //             Tab(
          //                 icon:
          //                 Icon(Icons.grid_on_sharp, color: Colors.black,)
          //             ),
          //             Tab(
          //                 icon:
          //                 Icon(Icons.video_collection, color: Colors.black,)
          //             ),
          //             Tab(
          //                 icon:
          //                 Icon(Icons.perm_contact_cal_outlined, color: Colors.black,)
          //             ),
          //           ],
          //         ),
          //       ),
          //       Expanded(
          //
          //       )
          //     )
          // ),
        ],
      ),
    //   TabBarView(
    //   controller:tabController ,
    //   children: [
    //     Item1(),
    //     Item2(),
    //     Item3(),
    //   ],
    //
    // ),
    );
  }
}
