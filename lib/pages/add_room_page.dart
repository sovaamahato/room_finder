import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../tab_used_in_AddRoomPage/description.dart';
import '../tab_used_in_AddRoomPage/preview.dart';
import '../tab_used_in_AddRoomPage/publish.dart';
import '../tab_used_in_AddRoomPage/room_photo.dart';
import '../tab_used_in_AddRoomPage/space_tab.dart';

class AddRoomPage extends StatefulWidget {
  

  @override
  State<AddRoomPage> createState() => _AddRoomPageState();
}

class _AddRoomPageState extends State<AddRoomPage> {

  List<Widget> tabOpts=[
  

  Text("Space",style: TextStyle(color: Colors.black),),
  Text("Room Photos",style: TextStyle(color: Colors.black)),
  Text("Description",style: TextStyle(color: Colors.black)),
  Text("preview Listing",style: TextStyle(color: Colors.black)),
  Text("Publish Room",style: TextStyle(color: Colors.black)),
  
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Rooms")),
      body: DefaultTabController(
        length:tabOpts.length,
        child: Column(
          children: [
            TabBar(tabs: tabOpts),
            Expanded(
                child: TabBarView(children: [
                  //donut
                  SpaceTab(),
                  //pancake
                  RoomPicTab(),
              
                  //Burger
                  DescriptionTab(),
                  //Icecream
                  PreviewTab(),
                  //pizza 
                  PublishTab()
              
                ]),
              )
          ],
        ),
      )
    );
  }
}