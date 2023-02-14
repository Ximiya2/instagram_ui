import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item1 extends StatefulWidget {
  const Item1({Key? key}) : super(key: key);

  @override
  State<Item1> createState() => _Item1State();
}

class _Item1State extends State<Item1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}



// import 'dart:js';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Item1 extends StatefulWidget {
//   const Item1({Key? key}) : super(key: key);
//
//   @override
//   State<Item1> createState() => _Item1State();
// }
//
// class _Item1State extends State<Item1> {
//
//   Overlay _popupDialog;
//   List<String> imagesUrls = [
//     'assets/images/carrent/ph17.jpg',
//     'assets/images/carrent/ph17.jpg',
//     'assets/images/carrent/ph17.jpg',
//     'assets/images/carrent/ph17.jpg',
//     'assets/images/carrent/ph17.jpg',
//     'assets/images/carrent/ph17.jpg',
//     'assets/images/carrent/ph17.jpg',
//     'assets/images/carrent/ph17.jpg',
//     'assets/images/carrent/ph17.jpg',
//     'assets/images/carrent/ph17.jpg',
//     'assets/images/carrent/ph17.jpg',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GridView.count(crossAxisCount: 3,
//       childAspectRatio: 1,
//       children: imagesUrls.map(_createGridTileWidget).toList(),)
//     );
//   }
// }
//
// Widget _createGridTileWidget(String url) => Builder(
//     builder: (context) => GestureDetector(
//       onLongPress: () {
//         _popupDialog = _createPopupDialog(url);
//         Overlay.of(context)?.insert(_popupDialog);
//       },
//     ) );
// OverlayEntry _createPopupDialog(String url) {
//   return OverlayEntry(
//       builder: (context) => AnimatedDialog(
//         child: _createPopContent(url),
//       )
//   );
//
//   Widget _createPopContent(String url) => Container(
//     padding: EdgeInsets.symmetric(horizontal: 16),
//     child: ClipRRect(
//       borderRadius: BorderRadius.circular(16),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.min,
//         children: [
//           _createPhotoTitle(),
//           Image.asset(url, fit: BoxFit.fitWidth,),
//           _createActionBar()
//         ],
//       ),
//     ),
//   );
//
//   Widget _createPhotoTitle() => Container(
//     width: double.infinity,
//       color: Colors.white,
//     child: ListTile(
//       leading: CircleAvatar(
//         backgroundImage: AssetImage('assets/images/carrent/ph18.jpg'),
//       ),
//       title: Text('John Doe', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
//     ),
//   );
//
//   Widget _createActionBar() => Container(
//     padding: EdgeInsets.symmetric(vertical: 10),
//     color: Colors.white,
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Icon(Icons.favorite_outline, color: Colors.black,),
//         Icon(Icons.chat_bubble_outline_outlined, color: Colors.black,),
//         Icon(Icons.send, color: Colors.black,),
//       ],
//     )
//   );
//
// }
//
// class AnimatedDialog extends StatefulWidget {
//   const AnimatedDialog({Key? key}) : super(key: key);
//
//   @override
//   State<AnimatedDialog> createState() => _AnimatedDialogState();
// }
//
// class _AnimatedDialogState extends State<AnimatedDialog> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
