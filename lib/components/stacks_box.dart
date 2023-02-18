import 'package:flutter/material.dart';
import '../pages/room_detail_page.dart';
import 'available_rooms.dart';

class StackBox extends StatelessWidget {
  String price;
  String room_type;
  String floor;
  String parking;
  String water;
  final String img_path;
  StackBox({
    required this.price,
     required this.room_type, 
     required this.floor,
     required this.parking,
     
     required this.water,
     required this.img_path,
     });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => RoomDetailsPage()),);
                },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Container(
          child: Stack(
            children: [
              Container(
                // color: Colors.amber,
                height: 250,
              ),
              Positioned(
                left: 130,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red, borderRadius: BorderRadius.circular(20)),
                  width: MediaQuery.of(context).size.width / 1.9,
                  height: 250,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        img_path,
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Positioned(
                top: 10,
                child: Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  width: 170,
                  height: 220,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
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
                                      fontSize: 18, color: Colors.grey)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('Room Type:\n '+ room_type,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.business,
                              color: Colors.purple,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              floor,
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.local_parking,
                              color: Colors.purple,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              parking,
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.water_drop,
                              color: Colors.purple,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              floor,
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
