import 'package:flutter/material.dart';
class StackBox extends StatelessWidget {
  const StackBox({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
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
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      width: MediaQuery.of(context).size.width / 1.9,
                      height: 250,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            "https://www.thespruce.com/thmb/iMt63n8NGCojUETr6-T8oj-5-ns=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/PAinteriors-7-cafe9c2bd6be4823b9345e591e4f367f.jpg",
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
                                text: 'Rs2500 ',
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
                            Text("Room Type:\n Apartment",
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
                                  "Second Floor",
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
                                  "car",
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
                                  "Second Floor",
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
          );
  }
}