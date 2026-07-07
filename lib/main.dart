import 'package:flutter/material.dart';
import 'package:screen/screen/book_request.dart';
import 'package:screen/screen/bookdetails.dart';
import 'package:screen/screen/searchscreen.dart';
import 'package:screen/screen/semesterbook.dart';
import 'package:screen/screen/profilescreen.dart';
import 'package:screen/screen/wishlist.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme:.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: WishlistPage(),
    );
  }
}
