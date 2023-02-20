import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  final iconLeading;
  String titleText;
  final iconTrailing =Icons.arrow_forward_ios;
  void Function()? onTap;
  CardTile({required this.iconLeading,required this.titleText, required this.onTap});
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:8.0),
        child: ListTile(
                  leading: Icon(iconLeading,color: Colors.purple,),
                  title: Text(titleText),
                  trailing: Icon(iconTrailing),
                ),
      ),
    );
  }
}