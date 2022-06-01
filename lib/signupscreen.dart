import 'package:flutter/material.dart';
import 'package:login/drawer.dart';
import 'package:login/main.dart';

import 'login.dart';

class signup extends StatefulWidget {
  const signup({ Key? key }) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
return Scaffold(

         body:Container(
         child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: Row(    
                mainAxisAlignment: MainAxisAlignment.start,
           children: [
                 
                
               ],
              ),
            ),  
            TextField(
                style: 
                 TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
                 decoration: InputDecoration(
                   
                      border: OutlineInputBorder(),
                      labelText: "First Name",
                 hintText: "Enter Your First Name",
                      ),
                ),
                 Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                child: Row(
                
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  
                 ],
                 ),
              ),  
               TextField(
                style: 
                 TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
                 decoration: InputDecoration(
                   
                      border: OutlineInputBorder(),
                      labelText: "Last Name",
                 hintText: "Enter Your Last Name",
                      ),
                ),
                 Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                child: Row(
                
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  
                 ],
                 ),
              ), 
               TextField(
                style: 
                 TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
                 decoration: InputDecoration(
                   
                      border: OutlineInputBorder(),
                      labelText: "User Name",
                 hintText: "Enter Your User Name",
                      ),
                ),
                 Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                child: Row(
                
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  
                 ],
                 ),
              ),     
               TextField(
                 
                style:
                TextStyle(color: Colors.black),
                decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: "Email",
                 hintText: "Enter Your Email",
                 
                 ),
               ),
                 Padding(
            
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                child: Row(
                
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  
                 ],
                 ),
              ), 
               TextField(
                style: 
                 TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
                 decoration: InputDecoration(
                   
                      border: OutlineInputBorder(),
                      labelText: "Phone Number",
                 hintText: "Enter Your Phone Number",
                      ),
                ),
                 Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                child: Row(
                
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  
                 ],
                 ),
              ),     
               TextField(obscureText: true,
                style:
                TextStyle(color: Colors.black),
                decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: "Password",
                 hintText: "Enter Your Password",
                 ),
               ),
               
               SizedBox(height: 10,),
  GestureDetector(
        child: Container(
          
                  height: 30,
               
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              
                   child: RaisedButton(onPressed: (){
                      var push = Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const drawer()),
  );
                   } , child :
                   
                   Text("Register"),
                  
                   color:Color.fromARGB(255, 45, 176, 216),
            textColor: Colors.white,
                  splashColor: Color.fromARGB(255, 215, 222, 228),
             onLongPress: (){},
             
                  )
              ),
      ),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                const Text('already have an account?'),
                TextButton(
                   child: FlatButton(onPressed: (){
                      var push = Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const login()),
  );
                   }, child: Text("Login",
                  style: TextStyle(fontWeight: FontWeight.bold,), 
                  ),
              textColor: Color.fromARGB(255, 88, 168, 112),
                  ),
                  onPressed: () { 
 
                        
                  },)
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
              
            
           ], ),




        ),
      
         ),
    );
  }
}







   