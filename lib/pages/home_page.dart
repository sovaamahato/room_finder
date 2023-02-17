import 'package:find_rooms_app/components/stacks_box.dart';
import 'package:flutter/material.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          //remaining body
          //text written "available room"

          //listview vertically scorable
         Container(
          height: MediaQuery.of(context).size.height,
           child: ListView.builder(
            itemCount: 4,
            itemBuilder:(BuildContext context, int index) {
              return StackBox();
              }
                  ),
         ),
         
        ],
      )),
    );
  }
}
