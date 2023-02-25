import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  String labelText;
  MyTextField({required this.labelText});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: labelText,
                floatingLabelStyle: MaterialStateTextStyle.resolveWith(
                    (Set<MaterialState> states) {
                  final Color color = states.contains(MaterialState.error)
                      ? Theme.of(context).colorScheme.error
                      : Colors.black38;
                  return TextStyle(color: color, letterSpacing: 1.3);
                }),
              ),
              //     validator: (String? value) {
              //   if (value == null || value == '') {
              //   return 'Enter name';
              //   }
              //   return null;
              // },
              autovalidateMode: AutovalidateMode.always,
            );
  }
}