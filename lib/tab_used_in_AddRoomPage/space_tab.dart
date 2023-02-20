import 'package:flutter/material.dart';

class SpaceTab extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //location choosing -----------------------
          Text("Room Locations",style: TextStyle(fontWeight: FontWeight.bold),
),
          SizedBox(height: 8,),
          TextFormField(
    
            
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: "format:Tunkune,kathmandu",
              floatingLabelStyle:
            MaterialStateTextStyle.resolveWith((Set<MaterialState> states) {
          final Color color = states.contains(MaterialState.error)
              ? Theme.of(context).colorScheme.error
              : Colors.black38;
          return TextStyle(color: color, letterSpacing: 1.3);
          }),
    
           
            ),
        //     validator: (String? value) {
        //   if (value == null || value == '') {
        //   return 'Enter name';
        //   }
        //   return null;
        // },
        autovalidateMode: AutovalidateMode.always,
          ),
          SizedBox(height: 8,),
         Text ("Listing Type",style: TextStyle(fontWeight: FontWeight.bold),)
//duita option bata euta select garna milne banauna bakiiiiiiii----------------------

//dropdown and select 6ota 
//parking choice


        ],),
      )),
    );
  }
}