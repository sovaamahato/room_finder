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
  

  Padding(
    padding: const EdgeInsets.all(9.0),
    child: Text("Space",style: TextStyle(color: Colors.white),),
  ),
  Text("Room Photos",style: TextStyle(color: Colors.white)),
  Text("Description",style: TextStyle(color: Colors.white)),
  Text("preview Listing",style: TextStyle(color: Colors.white)),
  Text("Publish Room",style: TextStyle(color: Colors.white)),
  
 ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length:tabOpts.length,
        child:Scaffold(
      appBar: AppBar(title: Text("Add Rooms"),
      bottom: TabBar(
        
            
              labelColor: Colors.purple,

              isScrollable: true,
              tabs: tabOpts),
      ),
      
      body: 
        
          
            
            TabBarView(children: [
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
              
            ])
          
      )
    );
  }
}