// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
//
// Widget profileHeaderWidget(BuildContext context) {
//   return Container(
//     width: double.infinity,
//     decoration: BoxDecoration(
//       color: Colors.white
//     ),
//     child: Padding(
//         padding: EdgeInsets.only(left: 18, right: 18, bottom: 10),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SizedBox(height: 10,),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 40,
//               backgroundColor: Color(0xff74EDED),
//               backgroundImage: AssetImage('assets/images/carrent/ph1.jpg'),
//             ),
//             Row(
//               children: [
//                 Column(
//                   children: [
//                     Text('23',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w700
//                     ),),
//                     Text('Posts',
//                       style: TextStyle(
//                           fontSize: 15,
//                           letterSpacing: 0.4,
//                       ),),
//                   ],
//                 ),
//                 SizedBox(width: 30,),
//                 Column(
//                   children: [
//                     Text('1.5M',
//                       style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.w700
//                       ),),
//                     Text('Followers',
//                       style: TextStyle(
//                         fontSize: 15,
//                         letterSpacing: 0.4,
//                       ),),
//                   ],
//                 ),
//                 SizedBox(width: 30,),
//                 Column(
//                   children: [
//                     Text('123',
//                       style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.w700
//                       ),),
//                     Text('Following',
//                       style: TextStyle(
//                         fontSize: 15,
//                         letterSpacing: 0.4,
//                       ),),
//                   ],
//                 ),
//                 SizedBox(width: 15,),
//               ],
//             ),
//           ],
//         ),
//         SizedBox(height: 8,),
//         Text('John Doe',
//           style: TextStyle(
//               color: Colors.black87,
//               fontSize: 16,
//               fontWeight: FontWeight.w600,
//               letterSpacing: 0.4
//           ),),
//         SizedBox(height: 4,),
//         Text('Bio goes here ',
//           style: TextStyle(
//               letterSpacing: 0.4
//           ),),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {},
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 20, right: 20),
//                 child: Text(
//                   'Edit progile',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//               style: ButtonStyle(
//                   backgroundColor:
//                   MaterialStateProperty.all<Color>(Colors.grey.shade800),
//                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                       RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ))),
//             ),
//             SizedBox(width: 8,),
//             ElevatedButton(
//               onPressed: () {},
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 20, right: 20),
//                 child: Text(
//                   'Share profil',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//               style: ButtonStyle(
//                   backgroundColor:
//                   MaterialStateProperty.all<Color>(Colors.grey.shade800),
//                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                       RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ))),
//             ),
//             SizedBox(width: 8,),
//             ElevatedButton(
//               onPressed: () {},
//               child: Icon(
//                 Icons.person_add,
//                 color: Colors.white,
//                 size: 22,
//               ),
//               style: ButtonStyle(
//                   backgroundColor:
//                   MaterialStateProperty.all<Color>(Colors.grey.shade800),
//                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                       RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ))),
//             ),
//           ],
//         ),
//       ],
//     ),),
//   );
// }