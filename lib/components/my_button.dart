import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  // const MyButton({Key? key}) : super(key: key);
  final Function()? onTap;
  MyButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:30.0,vertical: 15),
        child: Container(
          
          decoration: BoxDecoration( borderRadius: BorderRadius.circular(9),color: Colors.black),
          
          child: Center(child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("Sign in",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
          )),
        ),
      ),
    );
    
  }
}