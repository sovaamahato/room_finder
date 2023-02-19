import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  final iconLeading;
  String titleText;
  final iconTrailing =Icons.arrow_forward_ios;
  CardTile({required this.iconLeading,required this.titleText,});
  

  @override
  Widget build(BuildContext context) {
    return ListTile(
              leading: Icon(iconLeading,color: Colors.purple,),
              title: Text(titleText),
              trailing: Icon(iconTrailing),
            );
  }
}