import 'package:flutter/material.dart';

class RoomDetailsPage extends StatelessWidget {
  static const routeName='/detail-page';
//  String roomId;
//  String price;
//  String place;
//  RoomDetailsPage({required this.roomId,required this.price,required this.place});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

       
    if (routeArgs == Null) {
      return Scaffold(
        body: Center(
          child: Text("Error: Arguments cannot be null"),
        ),
      );
    }
    final no_of_bedroom = routeArgs['no_of_bedroom'];
    final place = routeArgs['place'];
    final img_path=routeArgs['img_path'];
    final price=routeArgs['price'];
    final floor=routeArgs['floor'];
    String? room_type=routeArgs['room_type'];
    final water=routeArgs['water'];
    final parking=routeArgs['parking'];
    final kitchen =routeArgs['kitchen'];
    final bathroom=routeArgs['bathroom'];
    final phone=routeArgs['phone'];

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            //container,positioned--image
            Positioned(child: Container(
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(img_path!,fit: BoxFit.cover,),
            )),
            //row positioned  ------appbar
            Positioned(child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),color: Colors.grey),
                    child:RichText(
                            text: TextSpan(
                              text: price,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                  color: Colors.black),
                              children: const <TextSpan>[
                                TextSpan(
                                    text: '/month',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white60)),
                              ],
                            ),
                          ), 
                  ),
                  Icon(Icons.cancel_outlined,size:29,color: Colors.white,)
                ],
              ),
            )),
            //white container----------------------------
            Positioned(
              top: 320,
              left: 0,
                child: Container(
                  
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              width: MediaQuery.of(context).size.width,
              height: 600,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                      ),
                      child: SingleChildScrollView(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              //name of place------------------
                              Row(children: [
                                Text(room_type!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                                Text(", "+place!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                                              
                              ],),
                              SizedBox(height: 20,),
                                              //parking,kitchen, -----------------------------
                                              Row(
                                    
                          children: [
                            Column(
                              children: [
                                Text("parking",style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(height: 
                                8,),
                                
                                if(parking=="")
                                  Icon(Icons.cancel_outlined,color: Colors.red,)
                                else
                               
                                  if(parking=="Bike")
                                  Icon(Icons.bike_scooter,color: Colors.green,)
                                  else if (parking=="Car")
                                  Icon(Icons.car_rental_outlined,color: Colors.green,), 
                              ],
                            ),
                            VerticalDivider(thickness: 4,color: Colors.black,),
                            // Column()2,
                            Column(
                              children: [
                                Text("Kitchen",style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(height: 
                                8,),
                                kitchen=="yes"?Icon(Icons.check,color: Colors.green,):Icon(Icons.cancel_outlined,color: Colors.red,)
                               
                              ],
                            ),
                            VerticalDivider(thickness: 4,color: Colors.black,),
                            // Column()3
                            Column(
                              children: [
                                Text("private Bathroom",style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(height: 
                                8,),
                                bathroom=="yes"?Icon(Icons.check,color: Colors.green,):Icon(Icons.cancel_outlined,color: Colors.red,)
                               
                                
                                 
                              ],
                            ),
                          ],
                                              ),
                                              //listview of items--------------------------
                                              Column(
                          children: [
                            ListTile(title: Text("No of BedRooms"),trailing: Text(no_of_bedroom!),),
                            ListTile(title: Text("Room on"),trailing: Text(floor!),),
                            ListTile(title: Text("Room Type"),trailing: Text(room_type),),
                            ListTile(title: Text("Water Supply"),trailing: Text(water!),),
                            ListTile(title: Text("Phone No."),trailing: Text(phone!),),
                          ],
                                              ),
                            ],
                          ),
                        ),
                      ),
            ),
            )
          ],
        ),
      ),
    );
  }
}
