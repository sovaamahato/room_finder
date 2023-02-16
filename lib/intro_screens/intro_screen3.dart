import 'package:flutter/material.dart';
class IntroPage3 extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     body: Column(
     
       children: [
        SizedBox(height: 200,),
        
         Image.asset('lib/images/person3.png'),
         Text("Meet Owner"),
         Text("Agent free-Direct Owner Deal")
       ],
     ),
    );
    
  }
}