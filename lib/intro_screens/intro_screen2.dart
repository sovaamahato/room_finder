import 'package:flutter/material.dart';
class IntroPage2 extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     body: Column(
     
       children: [
        SizedBox(height: 200,),
        
         Image.asset('lib/images/person2.jpg'),
         Text("Visit the place"),
         Text("Contact the Owner and visit room")
       ],
     ),
    );
    
  }
}