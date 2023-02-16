import 'package:flutter/material.dart';

// import 'package:video_player/video_player.dart';
class IntroPage1 extends StatefulWidget {
 

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     body: Column(
     
       children: [
        SizedBox(height: 200,),
        
         Image.asset('lib/images/person1.jpg'),
         Text("Search Rooms"),
         Text("Find Best Rooms Of Your")
       ],
     ),
    );
    
  }
}