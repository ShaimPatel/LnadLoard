import 'package:flutter/material.dart';

const customGradient1 = LinearGradient(
    colors: [
      Color.fromARGB(255, 245, 243, 123),
      Color.fromARGB(255, 2, 88, 23)
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.0, 1.0],
    tileMode: TileMode.clamp);

const customGradient2 = LinearGradient(
    colors: [Color(0xffC2ABFA), Color((0xff392DED))],
    begin: Alignment.bottomRight,
    end: Alignment.centerLeft,
    stops: [0.0, 1.0],
    tileMode: TileMode.clamp);

// Widget TextField_Design(
//     String text, String hint, TextEditingController controller , bool enable) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Padding(
//         padding: const EdgeInsets.only(left: 6, top: 8),
//         child: Text(text,
//             style: const TextStyle(
//               fontSize: 17,
//               fontWeight: FontWeight.w400,
//               color: AppColor.LiteGray,
//             )),
//       ),
//       Container(
//         margin: const EdgeInsets.symmetric(vertical: 16),
//         child: TextField(
//           controller: controller,
//           textAlign: TextAlign.start,
//           decoration: InputDecoration(
//             hintText: hint,
//             enabled: enable,
//             hintStyle: const TextStyle(
//                 fontWeight: FontWeight.w400,
//                 fontSize: 17,
//                 color: AppColor.gray_03),
//             border: const OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.grey, width: 0.0),
//             ),
//           ),
//         ),
//       ),
//     ],
//   );
// }

// Widget TextField_Design2(
//     String text,
//     String hint,
//     TextEditingController controller2,
//     IconData icon,
//     Color iconColor,
//     Function() onpress) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Padding(
//         padding: const EdgeInsets.only(left: 6, top: 8),
//         child: Text(text,
//             style: const TextStyle(
//               fontSize: 17,
//               fontWeight: FontWeight.w400,
//               color: AppColor.LiteGray,
//             )),
//       ),
//       Container(
//         color: AppColor.whiteColor,
//         margin: const EdgeInsets.symmetric(vertical: 16),
//         child: TextField(
//           controller: controller2,
//           textAlign: TextAlign.start,
//           decoration: InputDecoration(
//             hintText: hint,
//             hintStyle: const TextStyle(
//                 fontWeight: FontWeight.w400,
//                 fontSize: 17,
//                 color: AppColor.gray_03),
//             border: const OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.grey, width: 0.0),
//             ),
//             prefixIcon: IconButton(
//                 onPressed: onpress,
//                 icon: Icon(
//                   icon,
//                   color: iconColor,
//                   size: 30,
//                 )),
//           ),
//         ),
//       ),
//     ],
//   );
// }

// Widget Business_Card(
//   String businessName,
//   String serialNo,
//   Function() onPressed,
// ) {
//   return Container(
//     decoration: BoxDecoration(
//         boxShadow: const [
//           BoxShadow(
//             color: AppColor.gray_02,
//             blurRadius: 2,
//             offset: Offset(1, 1),
//             spreadRadius: 0,
//           )
//         ],
//         border: Border.all(color: AppColor.gray_02, width: 0.5),
//         color: Colors.white),
//     margin: const EdgeInsets.symmetric(
//       vertical: 8,
//     ),
//     padding: const EdgeInsets.only(top: 16, bottom: 8, left: 14),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           businessName,
//           style: const TextStyle(
//               fontWeight: FontWeight.w500,
//               fontSize: 16,
//               color: AppColor.primaryColor),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 const Text(
//                   "Serial number :",
//                   style: TextStyle(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 12,
//                       color: AppColor.gray_04),
//                 ),
//                 const SizedBox(width: 6),
//                 Text(
//                   "$serialNo ",
//                   style: const TextStyle(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 12,
//                       color: AppColor.gray_06),
//                 ),
//               ],
//             ),
//             IconButton(
//                 onPressed: onPressed,
//                 icon: const Icon(
//                   Icons.arrow_forward_ios_rounded,
//                   color: AppColor.primaryColor,
//                 ))
//           ],
//         )
//       ],
//     ),
//   );
// }

// Widget Search_TextField(
//     {required Function() onclose, required Function(String value) onSearch}) {
//   return Container(
//       padding: const EdgeInsets.only(top: 40, left: 15, right: 15, bottom: 10),
//       color: AppColor.primaryColor,
//       margin: const EdgeInsets.symmetric(vertical: 0),
//       child: TextField(
//         decoration: InputDecoration(
//           border: const OutlineInputBorder(
//             borderSide: BorderSide.none,
//           ),
//           filled: true,
//           fillColor: Colors.grey[200],
//           prefixIcon: const Icon(Icons.search),
//           suffixIconColor: Colors.grey,
//           prefixIconColor: Colors.grey,
//           suffixIcon: IconButton(
//             onPressed: onclose,
//             icon: const Icon(Icons.close),
//           ),
//         ),
//         onChanged: onSearch,
//       ));
// }

// Widget Search_App_Bar(String title, BuildContext context, Function() onpress) {
//   return AppBar(
//     title: Padding(
//       padding: const EdgeInsets.only(top: 28),
//       child: Text(
//         title,
//         style: const TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.w500,
//             color: Color(0xffFFFFFF)),
//       ),
//     ),
//     leading: GestureDetector(
//       onTap: () {
//         Navigator.of(context).pop();
//       },
//       child: const Padding(
//         padding: EdgeInsets.only(top: 28),
//         child: Icon(
//           Icons.arrow_back_ios, // add custom icons also
//         ),
//       ),
//     ),
//     actions: <Widget>[
//       Padding(
//           padding: const EdgeInsets.only(
//             right: 20.0,
//           ),
//           child: GestureDetector(
//             onTap: onpress,
//             child: const Padding(
//               padding: EdgeInsets.only(top: 28),
//               child: Icon(
//                 Icons.search,
//                 size: 30,
//               ),
//             ),
//           )),
//     ],
//   );
// }

// Widget Text_App_Bar(
//   String title,
//   String text,
//   BuildContext context,
// ) {
//   return AppBar(
//     title: Padding(
//       padding: const EdgeInsets.only(top: 28),
//       child: Text(
//         title,
//         style: const TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.w500,
//             color: Color(0xffFFFFFF)),
//       ),
//     ),
//     leading: GestureDetector(
//       onTap: () {
//         Navigator.of(context).pop();
//       },
//       child: const Padding(
//         padding: EdgeInsets.only(top: 28),
//         child: Icon(
//           Icons.arrow_back_ios, // add custom icons also
//         ),
//       ),
//     ),
//     actions: <Widget>[
//       Padding(
//         padding: const EdgeInsets.only(top: 28, right: 16),
//         child: Text(
//           text,
//           style: const TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.w500,
//               color: AppColor.gray_01),
//         ),
//       ),
//     ],
//   );
// }

// Widget App_Bar(BuildContext context, String title) {
//   return AppBar(
//     title: Padding(
//       padding: const EdgeInsets.only(top: 28),
//       child: Text(
//         title,
//         style: const TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.w500,
//             color: Color(0xffFFFFFF)),
//       ),
//     ),
//     leading: GestureDetector(
//       onTap: () {
//         Navigator.of(context).pop();
//       },
//       child: const Padding(
//         padding: EdgeInsets.only(top: 28),
//         child: Icon(
//           Icons.arrow_back_ios, // add custom icons also
//         ),
//       ),
//     ),
//   );
// }

// Widget Elevated_Button(String bText, Function() onpress, double value,
//     double fontSize, Color tColor, Color bColor, double borderRadius) {
//   return Container(
//     width: value,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(borderRadius),
//       color: bColor,
//     ),
//     child: TextButton(
//       style: TextButton.styleFrom(
//         foregroundColor: Colors.white,
//         textStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w600),
//       ),
//       onPressed: onpress,
//       child: Text(
//         bText,
//         style: TextStyle(
//             fontSize: fontSize, fontWeight: FontWeight.w600, color: tColor),
//       ),
//     ),
//   );
// }

// Widget DashboardTitle(String title, double fontSize) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(vertical: 22),
//     child: Row(
//       children: [
//         Text(
//           title,
//           style: TextStyle(
//               fontWeight: FontWeight.w500,
//               fontSize: fontSize,
//               color: AppColor.primaryColor),
//         )
//       ],
//     ),
//   );
// }

// Widget Image_Card(String text, String cImage, Function() onPressed) {
//   return Column(
//     children: [
//       GestureDetector(onTap: onPressed, child: Image.asset(cImage)),
//       const SizedBox(height: 8),
//       Text(
//         text,
//         style: const TextStyle(
//             fontWeight: FontWeight.w400, fontSize: 14, color: AppColor.gray_06),
//       )
//     ],
//   );
// }

// Widget Dashboard_Card_1(String title, String text, double lPadding) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
//     child: Row(
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: const TextStyle(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 16,
//                   color: AppColor.gray_04),
//             ),
//             const SizedBox(height: 6),
//             Padding(
//               padding: EdgeInsets.only(left: lPadding),
//               child: Text(
//                 text,
//                 style: const TextStyle(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 20,
//                     color: AppColor.gray_07),
//               ),
//             ),
//           ],
//         ),
//       ],
//     ),
//   );
// }

// Widget Dashboard_Card_2(String title, String text) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(vertical: 12),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: const TextStyle(
//               fontWeight: FontWeight.w400,
//               fontSize: 16,
//               color: AppColor.gray_04),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               text,
//               style: const TextStyle(
//                   fontWeight: FontWeight.w500,
//                   fontSize: 20,
//                   color: AppColor.gray_07),
//             ),
//             Row(
//               children: [
//                 IconButton(
//                     onPressed: () {},
//                     icon: const Icon(
//                       Icons.call,
//                       color: Color(0xff2DA6DB),
//                     )),
//                 IconButton(
//                   onPressed: () {},
//                   icon: Image.asset(
//                     ImageAssets.whatsapp,
//                     height: 25,
//                     width: 25,
//                     fit: BoxFit.contain,
//                     color: const Color(0xff53CB1B),
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ],
//     ),
//   );
// }

// Widget Dashboard_Card_3(
//     String title_1, String text_1, String title_2, String text_2) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(vertical: 12),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title_1,
//               style: const TextStyle(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 16,
//                   color: AppColor.gray_04),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               text_1,
//               style: const TextStyle(
//                   fontWeight: FontWeight.w500,
//                   fontSize: 20,
//                   color: AppColor.gray_07),
//             ),
//           ],
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title_2,
//               style: const TextStyle(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 15,
//                   color: AppColor.gray_04),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               text_2,
//               style: const TextStyle(
//                   fontWeight: FontWeight.w500,
//                   fontSize: 18,
//                   color: AppColor.gray_07),
//             ),
//           ],
//         ),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Icons.location_pin,
//                   color: AppColor.primaryColor,
//                 ))
//           ],
//         )
//       ],
//     ),
//   );
// }

// Widget Dashboard_Card_4(String title, String value, String text) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         Text(
//           title,
//           style: const TextStyle(
//               fontWeight: FontWeight.w400,
//               fontSize: 16,
//               color: AppColor.gray_04),
//         ),
//         const SizedBox(height: 6),
//         Row(
//           children: [
//             Text(
//               value,
//               style: const TextStyle(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 20,
//                   color: AppColor.gray_07),
//             ),
//             const SizedBox(width: 8),
//             Text(
//               text,
//               style: const TextStyle(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 12,
//                   color: AppColor.primaryColor),
//             ),
//           ],
//         ),
//       ],
//     ),
//   );
// }
