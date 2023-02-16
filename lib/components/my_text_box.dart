import 'package:flutter/material.dart';

class MyTextBox extends StatelessWidget {
  // const MyTextBox({Key? key}) : super(key: key);
  final String hintText;
  final controller;
  final bool obscure;
  String? Function(String?) validator;
 MyTextBox({required this.hintText,required this.controller,required this.obscure,required this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
          // decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(13), color: Colors.grey[200]),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              validator:validator ,
              controller: controller,
              obscureText: obscure,
                decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey[400]),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
            ),),
          )),
    );
  }
}
