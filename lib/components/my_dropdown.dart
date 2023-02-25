import 'package:find_rooms_app/tab_used_in_AddRoomPage/space_tab.dart';
import 'package:flutter/material.dart';
var dropdownvalue;

class MyDropDown extends StatefulWidget {
  final String text;
final List<String>items;


  // var items;

 MyDropDown({required this.items,required this.text});
  
  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
    //-------------------dropdown ----------------------------------------------------------------

    
  
  @override
  Widget build(BuildContext context) {

    String dropdownvalue = widget.items.first;
    return DropdownButton(

             
              
             borderRadius: BorderRadius.circular(12),
             underline: Padding(
               padding: const EdgeInsets.only(bottom:26.0),
               child: Text(widget.text,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
             ),
             elevation:0,
             // Initial Value
             value: dropdownvalue,
           
             // Down Arrow Icon
             icon: const Icon(Icons.keyboard_arrow_down),
           
             // Array list of items
             items: widget.items.map((String items) {
               return DropdownMenuItem(
                 
                 value: items,
                 child: Text(items),
               );
             }).toList(),
             // After selecting the desired option,it will
             // change button value to selected value
             onChanged: (String? newValue) {
              dropdownvalue = newValue!;
               setState(() {
                 dropdownvalue = newValue!;
               });
             },
           );
  }
}