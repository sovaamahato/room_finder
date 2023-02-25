import 'package:flutter/material.dart';

import '../components/my_dropdown.dart';
import '../components/my_textfield.dart';

//-------------------------icons for the toggle buttons

final List<String> items = <String>['1', '2', '4'];
List<Widget> icons1 = <Widget>[
  Padding(
    padding: EdgeInsets.all(10.0),
    child: Column(
      children: [
        Icon(
          Icons.home,
          size: 45,
        ),
        Text(
          "Whole flat",
          style: TextStyle(color: Colors.grey[700]),
        )
      ],
    ),
  ),
  Padding(
    padding: EdgeInsets.all(10.0),
    child: Column(
      children: [
        Icon(
          Icons.person,
          size: 45,
        ),
        Text(
          "Private Room",
          style: TextStyle(color: Colors.grey[700]),
        )
      ],
    ),
  ),
];

List<Widget> icons2 = <Widget>[
  Padding(
    padding: EdgeInsets.all(10.0),
    child: Column(
      children: [
        Icon(
          Icons.cancel_outlined,
          size: 50,
        ),
        Text(
          "No",
          style: TextStyle(color: Colors.grey[700]),
        ),
      ],
    ),
  ),
  Padding(
    padding: EdgeInsets.all(10.0),
    child: Column(
      children: [
        Icon(
          Icons.bike_scooter,
          size: 50,
        ),
        Text(
          "Bike only",
          style: TextStyle(color: Colors.grey[700]),
        ),
      ],
    ),
  ),
  Padding(
    padding: EdgeInsets.all(10.0),
    child: Column(
      children: [
        Icon(
          Icons.car_repair_outlined,
          size: 50,
        ),
        Text(
          "Car Also",
          style: TextStyle(color: Colors.grey[700]),
        ),
      ],
    ),
  ),
];

class SpaceTab extends StatefulWidget {
  @override
  State<SpaceTab> createState() => _SpaceTabState();
}

class _SpaceTabState extends State<SpaceTab> {
//for selecting
  final List<bool> _selectedWeather = <bool>[true, false];
  final List<bool> _selectedParking = <bool>[true, false, false];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //location choosing -----------------------
            Text(
              "Room Locations",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
           MyTextField(labelText: "format:Tunkune,kathmandu",),
            SizedBox(
              height: 8,
            ),
            Text(
              "Listing Type",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
//duita option bata euta select garna milne banauna bakiiiiiiii-------banaisake no baakiii---------------

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: ToggleButtons(
                direction: Axis.horizontal,
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
                children: icons1,
              ),
            ),
            SizedBox(
              height: 15,
            ),

//dropdown and select 6ota
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: MyDropDown(
                              text: "No of BedRooms?",
                              items: ['1', '2', '3', '3+'])),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                          child: MyDropDown(
                              text: "Bathroom?", items: ['yes', 'No'])),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: MyDropDown(
                        text: "Kitchen?",
                        items: ['yes', 'No'],
                      )),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                          child: MyDropDown(
                        text: "Water Supply?",
                        items: ['Few', 'Enough', '24/7'],
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: MyDropDown(
                        text: "Room Foor?",
                        items: ['Ground', 'First', 'Second', 'Third', 'Fourth'],
                      )),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                          child: MyDropDown(
                              text: "Is furnished?", items: ['No', 'Yes'])),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),
//parking choice
            Text(
              "Parking Status",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: ToggleButtons(
                  direction: Axis.horizontal,
                  onPressed: (int index) {
                    setState(() {
                      // The button that is tapped is set to true, and the others to false.

                      for (int i = 0; i < _selectedParking.length; i++) {
                        _selectedParking[i] = i == index;
                      }
                    });
                  },
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  selectedBorderColor: Colors.purple[700],
                  selectedColor: Colors.white,
                  fillColor: Colors.purple[200],
                  color: Colors.purple[400],
                  isSelected: _selectedParking,
                  children: icons2),
            ),
          ],
        ),
      )),
    );
  }
}
