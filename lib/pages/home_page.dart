import 'package:find_rooms_app/components/stacks_box.dart';
import 'package:flutter/material.dart';
import '../components/available_rooms.dart';
// import 'room_detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],

      appBar: AppBar(
          title: Text("Available Rooms"),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))]),
      //bottomnavigation bar
      
      body: SingleChildScrollView(
          child: Column(
        children: [
          //remaining body
          //text written "available room"

          //listview vertically scorable
         Container(
          height: MediaQuery.of(context).size.height,
           child: ListView.builder(
            itemCount: AvailableRooms.length,
            itemBuilder:(BuildContext context, int index) {
              return StackBox(
                price: AvailableRooms[index][0],
                room_type: AvailableRooms[index][1],
                floor: AvailableRooms[index][2],
                parking: AvailableRooms[index][3],
                water: AvailableRooms[index][4],
                img_path: AvailableRooms[index][5],
              
              );
              }
                  ),
         ),
         
        ],
      )),
    );
  }
}
