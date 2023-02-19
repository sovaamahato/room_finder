import 'package:find_rooms_app/components/card_tile.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  // String name;
  // String email;
  // UserProfilePage({required this.name,required this.email});

  List itemList=[
    [Icons.add,"Add New Room"],
    [Icons.account_box,"Manage Listing"],
    [Icons.send,"Invite Friends"],
    [Icons.settings,"settings"],
    [Icons.question_mark_rounded,"Help"],
    [Icons.phone,"Contact"]

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
              return CardTile(iconLeading:itemList[index][0] , titleText: itemList[index][1]);
              }
                  ),
            )

            
            

                     
            
            
          ],
        ),
      ),
    );
  }
}
