import 'package:flutter/material.dart';

class MyboxTile extends StatelessWidget {
// const MyboxTile({ Key? key }) : super(key: key);
  final String imagePath;
  MyboxTile({required this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
            border: Border.all(
          color: Colors.white,
        )),
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Image.asset(
            imagePath,
            height: 55,
          ),
        ),
      ),
    );
  }
}
