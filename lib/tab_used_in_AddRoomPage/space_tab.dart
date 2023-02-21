import 'package:flutter/material.dart';

const List<Widget> icons = <Widget>[
  Padding(
    padding: EdgeInsets.all(10.0),
    child: Icon(Icons.sunny,size: 45,),
  ),
  Padding(
    padding: EdgeInsets.all(10.0),
    child: Icon(Icons.cloud,size: 45,),
  ),
  
];

class SpaceTab extends StatefulWidget {
  

  @override
  State<SpaceTab> createState() => _SpaceTabState();
}

class _SpaceTabState extends State<SpaceTab> {

  final List<bool> _selectedWeather = <bool>[true, false];
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
         Text ("Listing Type",style: TextStyle(fontWeight: FontWeight.bold),),
         SizedBox(height: 10,),
//duita option bata euta select garna milne banauna bakiiiiiiii----------------------


        ToggleButtons(
          
                direction:  Axis.horizontal,
                onPressed: (int index) {
                  setState(() {
                    // The button that is tapped is set to true, and the others to false.
                    for (int i = 0; i < _selectedWeather.length; i++) {
                      _selectedWeather[i] = i == index;
                    }
                  });
                },
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                selectedBorderColor: Colors.purple[700],
                selectedColor: Colors.white,
                fillColor: Colors.purple[200],
                color: Colors.purple[400],
                isSelected: _selectedWeather,
                children: icons,
              ),

//dropdown and select 6ota 
//parking choice


        ],),
      )),
    );
  }
}