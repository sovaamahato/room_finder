// import 'package:authentication_app/my_button.dart';
// import 'package:authentication_app/mybox_tile.dart';


import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_text_box.dart';
import '../components/mybox_tile.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  // const HomePage({Key? key}) : super(key: key);
  

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {



  final usernameContoller = TextEditingController();
  final passwordContoller=TextEditingController();

  //ontap on signButton method

  //for authentication
  final _formKey=GlobalKey<FormState>();
  String? validator(value){
    if(value.isEmpty)
			return "username can't be empty";
    else{
return null;
    }
		}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(child: Form(
        key:_formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          //icon------------
          Icon(Icons.lock,
          size: 100,
          ),
          SizedBox(height: 35,),
      
          //greetings------------------
          Text("Welcome Back.you've been missed!"),
          SizedBox(height: 30,),
      
      
          //username textfield--------------------
          MyTextBox(hintText:"Username",controller: usernameContoller,obscure: false,validator: validator,),
          SizedBox(height: 10,),
      
          //password textfield--------------------
          MyTextBox(hintText: "Password",controller: passwordContoller,obscure: true,validator: validator,),
          SizedBox(height: 8,),
           //forgot password-------------------------
           Padding(
             padding: const EdgeInsets.symmetric(horizontal:25.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text("forgot Password?")],),
           ),
           SizedBox(height: 10,),
      
          //signup buttom----------
          MyButton(onTap: (){
            setState(() {
              if(_formKey.currentState!.validate()){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              }
            });
          },),
          SizedBox(height: 10,),
      
         
      
          //continue with---------------------------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Or continue with"),
                ),
                Expanded(child: Divider())
              ],
            ),
          ),
          SizedBox(height: 20,),
          //logo of google and apple
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyboxTile(imagePath: 'lib/images/google.png',),
              MyboxTile(imagePath: 'lib/images/apple.png',)
            ],
          ),
          SizedBox(height: 50,),
      
      
          //mot a member, register now---
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Not a member?",),Text("Register now",style: TextStyle(color: Colors.blue),)],)
      
        ],),
      )),
    );
    
  }
}