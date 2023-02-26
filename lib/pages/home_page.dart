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
                no_of_bedroom: AvailableRooms[index][0]?? '',
                price: AvailableRooms[index][1]?? '',
                room_type: AvailableRooms[index][2]?? '',
                floor: AvailableRooms[index][3]?? '',
                parking: AvailableRooms[index][4]?? '',
                water: AvailableRooms[index][5]?? '',
                img_path: AvailableRooms[index][6]?? '',
                place: AvailableRooms[index][7]?? '',
                kitchen: AvailableRooms[index][8]?? '',
                 bathroom: AvailableRooms[index][9]?? '', 
                 
                 phone: AvailableRooms[index][10]?? '',

              
              );
              }
                  ),
         ),
         
        ],
      )),
    );
  }
}
