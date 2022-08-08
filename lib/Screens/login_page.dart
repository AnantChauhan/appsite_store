import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          
          Image.asset(
            "assets/images/logimage.png",width: 150, height: 90,
        ),
        // SizedBox(height: 20,)
         Text(
            "Welcome",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ), ),

Padding(
  padding: const EdgeInsets.symmetric(vertical:10,horizontal: 35,),
  child:   Column(children: [
     TextFormField(
      decoration: InputDecoration(
        hintText: "Enter user name",
        labelText: "User Name",
      ),
  ),
  
  TextFormField(
    obscureText: true,
      decoration: InputDecoration(
        hintText: "Enter strong password",
        labelText: "Enter Password",
    
      ),
    ),
SizedBox(height: 20,),

ElevatedButton(onPressed: () {
  print("Hyy... I'm Anant");
},
 child: Text("Login"),
 )
    
  ],),
)




        ],
      )
    );
  }
}