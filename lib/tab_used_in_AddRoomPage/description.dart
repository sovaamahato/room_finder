import 'package:flutter/material.dart';

import '../components/my_textfield.dart';

class DescriptionTab extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Contact Number",style: 
            TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            MyTextField(labelText: "Mobile Number",),
            SizedBox(height: 10,),
    
            Text("Contact Number (2nd)",style: 
            TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            MyTextField(labelText: "Home Number",),
            SizedBox(height: 10,),
    
            Text("Room Details",style: 
            TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            MyTextField(labelText: "Explain about room",),
            SizedBox(height: 10,),
    
            Text("Room Rent",style: 
            TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            MyTextField(labelText: "Rent of Room",),
            SizedBox(height: 10,),
    
            
    
          ],
        ),
      ),
    );
  }
}