import 'package:find_rooms_app/components/card_tile.dart';
import 'package:find_rooms_app/pages/manage_listing_page.dart';
import 'package:find_rooms_app/pages/settings_page.dart';
import 'package:flutter/material.dart';

import 'add_room_page.dart';



class UserProfilePage extends StatefulWidget {
  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  // String name;

 
  List itemList=[
    [Icons.add,"Add New Room",AddRoomPage(),],
    [Icons.account_box,"Manage Listing",ManageListing()],
    [Icons.send,"Invite Friends",Text("")],
    [Icons.settings,"settings",SettingPage()],
    [Icons.question_mark_rounded,"Help",Text("")],
    [Icons.phone,"Contact",Text("")]

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("lib/images/person1.jpg"),
              ),
              accountName: Text(
                "Sova Mahato",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              accountEmail:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                        "myemail@gmail.com",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:10.0),
                        child: Icon(
                        Icons.logout_outlined,
                        color: Colors.white,
                        size: 26,
                                          ),
                      )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).size.height*0.9,
              child: ListView.builder(
            itemCount: itemList.length,
            itemBuilder:(BuildContext context, int index) {
              return CardTile(iconLeading:itemList[index][0] , titleText: itemList[index][1],onTap: (){
                setState(() {
                  index==2||index==4||index==5?itemList[index][2]:
                  Navigator.push(context, MaterialPageRoute(builder: (_) =>itemList[index][2]),);

                });
              },);
              }
                  ),
            )

            
            

                     
            
            
          ],
        ),
      ),
    );
  }
}
