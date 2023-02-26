import 'package:find_rooms_app/pages/home.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/intro_page.dart';
import 'pages/room_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home:Home() ,
      routes: {
        RoomDetailsPage.routeName:(context) => RoomDetailsPage()
      },
    );
    
  }
}