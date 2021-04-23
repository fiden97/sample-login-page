// ===========================================================================================
// CONTAINER
// ===========================================================================================
// Container(
//   alignment: Alignment.bottomLeft,
//   padding: EdgeInsets.fromLTRB(15, 0, 0, 0),)
// 
// ===========================================================================================
// OUTLINED BUTTON
// ===========================================================================================
// Container(
// alignment: Alignment.bottomRight,
// padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
// child: OutlinedButton(
//   onPressed: () {},
//   style: OutlinedButton.styleFrom(
//     side: BorderSide(color: fcmMidnightBlack),
//     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
//     primary: fcmMidnightBlack,
//   ),
//   child: Text('New User Registration'),
// ))
// 
// ===========================================================================================
// USE WALLPAPER AND BOXDECORATION
// ===========================================================================================
// Container(
// width: MediaQuery.of(context).size.width,
// height: MediaQuery.of(context).size.height,
// decoration: BoxDecoration(
//   color: Colors.red,
//   image: DecorationImage(
//       image: AssetImage('picture/FCMBackground.png'), fit: BoxFit.cover),
// ),
// 
// ===========================================================================================
// ALIGN TOP RIGHT
// ===========================================================================================
// Container(
//   child: Align(
//     child: Image.asset(
//       'picture/FCMLogo_white.png',
//       height: 100,
//       width: 250,
//     ),
//     alignment: Alignment.topRight,
//   ),
// ),
// 
// ===========================================================================================
// UNDERLINE
// ===========================================================================================
// Text(
//   'Hello world',
//   style: TextStyle(
//     decoration: TextDecoration.underline,
//   ),
// )