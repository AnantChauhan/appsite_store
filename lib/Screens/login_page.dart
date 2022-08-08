import 'package:appsite_store/utils/routes.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Material(
      
      color: Colors.white,
      child: Column(
        children: [
          
          Image.asset(
            "assets/images/logimage.png",width: 180, height: 130,
        ),
        SizedBox(height: 20,),
         Text(
            "Welcome",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ), ),

Padding(
  padding: const EdgeInsets.symmetric(vertical:22,horizontal: 35,),
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
        labelText: "Password",
    
      ),
    ),
SizedBox(height: 30,),

ElevatedButton(
  child: Text("Login"),
 style: TextButton.styleFrom(minimumSize: Size(100, 35,)),
  onPressed: () {
  Navigator.pushNamed(context, Myroutes.sampleroutes);
},
 
 )
    
  ],),
)




        ],
      )
    );
  }
}